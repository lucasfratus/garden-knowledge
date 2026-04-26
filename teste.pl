% Para executar: ?- run_tests.
% Para executar um grupo: ?- run_tests(nome_do_grupo).
%

:- consult('base_conhecimento.pl').
:- consult('motor.pl').
:- consult('interface.pl').
:- use_module(library(plunit)).

%
% Utilitario: limpa todas as respostas e configura um cenario
%
% Uso: configurar_respostas([sintoma1-sim, sintoma2-nao, ...])
%

configurar_respostas(Pares) :-
    retractall(resposta(_, _)),
    forall(
        member(Sintoma-Valor, Pares),
        assertz(resposta(Sintoma, Valor))
    ).

%
% Auxiliares para testes de CRUD
%
% MOTIVO: assertz/retractall dentro de um bloco plunit operam no modulo
% de testes, criando uma copia local que bloqueia acesso aos fatos
% originais do modulo user. Ao definir estes auxiliares FORA do
% begin_tests, eles ficam no modulo user e garantem que as operacoes
% de banco de dados acontecam no lugar certo.
%

crud_add(Id, Nome, Cat, Prob, Desc) :-
    assertz(hipotese(Id, Nome, Cat, Prob, Desc)).

crud_del(Id) :-
    retractall(hipotese(Id, _, _, _, _)).

crud_add_sint_obrig(H, S) :- assertz(sintoma_obrigatorio(H, S)).
crud_add_sint_opcl(H, S) :- assertz(sintoma_opcional(H, S)).

crud_del_sintomas(Id) :-
    retractall(sintoma_obrigatorio(Id, _)),
    retractall(sintoma_opcional(Id, _)).

% 
%   DIAGNOSTICO
%   Verifica se o motor identifica corretamente as hipoteses
%   a partir de um conjunto de respostas simuladas.
%

:- begin_tests(diagnostico).

% Todos os obrigatorios de excesso_agua confirmados -> aparece no diagnostico
test(diagnostico_excesso_agua) :-
    configurar_respostas([
        solo_encharcado-sim,
        folhas_murchas_solo_umido-sim
    ]),
    diagnostico(Resultados),
    member(_-excesso_agua, Resultados).

% Todos os obrigatorios de falta_agua confirmados -> aparece no diagnostico
test(diagnostico_falta_agua) :-
    configurar_respostas([
        solo_seco-sim,
        folhas_murchas-sim
    ]),
    diagnostico(Resultados),
    member(_-falta_agua, Resultados).

% Obrigatorio de excesso_agua negado -> nao aparece no diagnostico
test(descarte_excesso_agua) :-
    configurar_respostas([
        solo_encharcado-nao,
        folhas_murchas_solo_umido-sim
    ]),
    diagnostico(Resultados),
    \+ member(_-excesso_agua, Resultados).

% Todos os obrigatorios de pulgao confirmados -> aparece no diagnostico
test(diagnostico_pulgao) :-
    configurar_respostas([
        insetos_agrupados_brotos_folhas_novas-sim,
        substancia_pegajosa_melada_folhas-sim
    ]),
    diagnostico(Resultados),
    member(_-pulgao, Resultados).

% Todos os obrigatorios de oidio confirmados -> aparece no diagnostico
test(diagnostico_oidio) :-
    configurar_respostas([
        po_branco_pulverulento_folhas-sim,
        alta_umidade_ventilacao_ruim-sim
    ]),
    diagnostico(Resultados),
    member(_-oidio, Resultados).

% Resultados ordenados: primeiro elemento tem prob >= ultimo
% [nondet] porque diagnostico/1 pode ter choice point interno
test(resultados_ordenados_decrescente, [nondet]) :-
    configurar_respostas([
        solo_encharcado-sim,
        folhas_murchas_solo_umido-sim,
        folhas_amarelas-sim,
        caule_mole_escurecido_base-sim,
        solo_seco-nao,
        folhas_murchas-nao
    ]),
    diagnostico(Resultados),
    ordenado_decrescente(Resultados).

ordenado_decrescente([]).
ordenado_decrescente([_]).
ordenado_decrescente([A-_, B-_|T]) :-
    A >= B,
    ordenado_decrescente([B-_|T]).

:- end_tests(diagnostico).

%
%   Calculo de probabilidade
%   Verifica se a formula ProbFinal = ProbBase + Bonus
% 

:- begin_tests(probabilidade).

% Sem opcionais confirmados: ProbFinal deve ser exatamente ProbBase
test(prob_sem_opcionais) :-
    configurar_respostas([
        solo_encharcado-sim,
        folhas_murchas_solo_umido-sim
    ]),
    hipotese(excesso_agua, _, _, ProbBase, _),
    probabilidade_final(excesso_agua, ProbFinal),
    ProbFinal =:= ProbBase.

% Com todos os opcionais confirmados: Bonus deve ser 0.10
test(prob_todos_opcionais) :-
    configurar_respostas([
        solo_encharcado-sim,
        folhas_murchas_solo_umido-sim,
        folhas_amarelas-sim,
        caule_mole_escurecido_base-sim,
        raizes_escuras_podres_cheiro_ruim-sim,
        rega_diaria_frequente-sim
    ]),
    hipotese(excesso_agua, _, _, ProbBase, _),
    probabilidade_final(excesso_agua, ProbFinal),
    Esperado is min(1.0, ProbBase + 0.10),
    ProbFinal =:= Esperado.

% Prob nunca ultrapassa 1.0
test(prob_maxima_um) :-
    configurar_respostas([
        solo_encharcado-sim,
        folhas_murchas_solo_umido-sim,
        folhas_amarelas-sim,
        caule_mole_escurecido_base-sim,
        raizes_escuras_podres_cheiro_ruim-sim,
        rega_diaria_frequente-sim
    ]),
    probabilidade_final(excesso_agua, ProbFinal),
    ProbFinal =< 1.0.

% Obrigatorio ausente: probabilidade_final deve falhar (nao gera resultado)
test(prob_zero_obrigatorio_ausente, fail) :-
    configurar_respostas([
        solo_encharcado-nao,
        folhas_murchas_solo_umido-sim
    ]),
    probabilidade_final(excesso_agua, _).

% Com metade dos opcionais: Bonus deve ser ~0.05
test(prob_metade_opcionais) :-
    configurar_respostas([
        solo_encharcado-sim,
        folhas_murchas_solo_umido-sim,
        folhas_amarelas-sim,
        caule_mole_escurecido_base-sim
    ]),
    hipotese(excesso_agua, _, _, ProbBase, _),
    total_opcionais(excesso_agua, Total),
    contar_opcionais_confirmados(excesso_agua, Conf),
    Bonus is (Conf / Total) * 0.10,
    ProbEsperada is min(1.0, ProbBase + Bonus),
    probabilidade_final(excesso_agua, ProbFinal),
    ProbFinal =:= ProbEsperada.

:- end_tests(probabilidade).

%
%   EXPLICABILIDADE
%   Verifica se os predicados de explicacao funcionam
%   para os tres tipos exigidos pelo enunciado.
% 

:- begin_tests(explicabilidade).

% explicar_hipotese nao falha para hipotese com obrigatorios confirmados
test(explicar_hipotese_confirmada) :-
    configurar_respostas([
        solo_encharcado-sim,
        folhas_murchas_solo_umido-sim
    ]),
    \+ \+ explicar_hipotese(excesso_agua).

% hipotese_descartada e verdadeiro quando obrigatorio foi negado
% [nondet] porque hipotese_descartada/1 pode unificar com multiplos sintomas
test(hipotese_descartada_corretamente, [nondet]) :-
    configurar_respostas([
        solo_encharcado-nao
    ]),
    hipotese_descartada(excesso_agua).

% hipotese_descartada falha quando nenhum obrigatorio foi negado
test(hipotese_nao_descartada, fail) :-
    configurar_respostas([
        solo_encharcado-sim,
        folhas_murchas_solo_umido-sim
    ]),
    hipotese_descartada(excesso_agua).

% sintoma_que_descartou retorna o sintoma correto
% [nondet] porque sintoma_que_descartou/2 pode ter multiplas solucoes
test(sintoma_que_descartou_correto, [nondet]) :-
    configurar_respostas([
        solo_encharcado-nao
    ]),
    sintoma_que_descartou(excesso_agua, solo_encharcado).

% explicar_pergunta nao falha para sintoma conhecido
test(explicar_pergunta_valida) :-
    \+ \+ explicar_pergunta(solo_encharcado).

% explicar_pergunta falha para sintoma inexistente
test(explicar_pergunta_invalida, fail) :-
    explicar_pergunta(sintoma_que_nao_existe).

:- end_tests(explicabilidade).

%
%   CRUD
%   Verifica insercao, consulta, alteracao e remocao
%   de hipoteses em tempo de execucao.
%
%   IMPORTANTE: os testes usam os auxiliares crud_add/5, crud_del/1 e
%   crud_del_sintomas/1 definidos no modulo user (acima do begin_tests).
%   Evita o sombremento de modulo do plunit: assertz/
%   retractall dentro do bloco de testes criaria uma copia local de
%   hipotese/5 que bloquearia acesso aos fatos originais.
%

:- begin_tests(crud).

% Insercao: hipotese adicionada pode ser consultada
test(crud_inserir) :-
    crud_del(teste_hipotese),
    crud_add(teste_hipotese, 'Hipotese de Teste', teste, 0.75, 'Descricao de teste'),
    hipotese(teste_hipotese, 'Hipotese de Teste', teste, 0.75, 'Descricao de teste'),
    crud_del(teste_hipotese).

% Consulta: hipotese existente na base e encontrada
test(crud_consultar) :-
    once(hipotese(excesso_agua, _, _, _, _)).

% Alteracao: retract + assert atualiza corretamente
test(crud_alterar) :-
    crud_del(teste_alt),
    crud_add(teste_alt, 'Original', cat, 0.50, 'Desc original'),
    crud_del(teste_alt),
    crud_add(teste_alt, 'Alterada', cat, 0.80, 'Desc alterada'),
    hipotese(teste_alt, 'Alterada', cat, 0.80, 'Desc alterada'),
    crud_del(teste_alt).

% Remocao: apos retractall, hipotese nao e mais encontrada
test(crud_remover) :-
    crud_add(teste_rem, 'Para Remover', cat, 0.60, 'Desc'),
    crud_del(teste_rem),
    \+ hipotese(teste_rem, _, _, _, _).

% Remocao em cascata: sintomas associados tambem sao removidos
test(crud_remover_cascata) :-
    crud_add(teste_casc, 'Cascata', cat, 0.60, 'Desc'),
    crud_add_sint_obrig(teste_casc, sintoma_x),
    crud_add_sint_opcl(teste_casc, sintoma_y),
    crud_del(teste_casc),
    crud_del_sintomas(teste_casc),
    \+ hipotese(teste_casc, _, _, _, _),
    \+ sintoma_obrigatorio(teste_casc, _),
    \+ sintoma_opcional(teste_casc, _).

:- end_tests(crud).
