:- consult('base_conhecimento.pl').

:- dynamic resposta/2.

%
% Verifica se todos os sintomas obrigatórios de uma hipótese foram confirmados
%

obrigatorios_confirmados(Hipotese) :-
    forall(
        sintoma_obrigatorio(Hipotese, Sintoma),
		resposta(Sintoma, sim)
    ).

%
% Verifica se uma hipótese foi descartada
%

hipotese_descartada(Hipotese) :-
    sintoma_obrigatorio(Hipotese, Sintoma),
    resposta(Sintoma, nao).

%
% Retorna quais sintomas obrigatórios descartaram uma hipótese
%

sintoma_que_descartou(Hipotese, Sintoma) :-
    sintoma_obrigatorio(Hipotese, Sintoma),
    resposta(Sintoma, nao).

%
% Conta quantos sintomas opcionais foram confirmados
%

contar_opcionais_confirmados(Hipotese, Quantidade) :-
    findall(
        Sintoma,
        (
            sintoma_opcional(Hipotese, Sintoma),
            resposta(Sintoma, sim)
        ),
        Lista
    ),
    length(Lista, Quantidade).

%
% Conta o total de sintomas opcionais da hipótese
%

total_opcionais(Hipotese, Total) :-
    findall(
        Sintoma,
        sintoma_opcional(Hipotese, Sintoma),
        Lista
    ),
    length(Lista, Total).

%
% Hipotese ainda possivel:
% nao pode ter nenhum sintoma obrigatorio respondido como nao
%

hipotese_possivel(Hipotese) :-
    hipotese(Hipotese, _, _, _, _),
    \+ hipotese_descartada(Hipotese).

%
% Sintoma obrigatorio ainda nao perguntado
%

sintoma_obrigatorio_nao_respondido(Sintoma) :-
    sintoma_obrigatorio(_, Sintoma),
    \+ resposta(Sintoma, _).

%
% Sintoma opcional relevante:
% pertence a uma hipotese ainda possivel
% e ainda nao foi respondido
%

sintoma_opcional_relevante(Sintoma) :-
    hipotese_possivel(Hipotese),
    sintoma_opcional(Hipotese, Sintoma),
    \+ resposta(Sintoma, _).

%
% Calcula a probabilidade final da hipótese
%

probabilidade_final(Hipotese, ProbFinal) :-
    hipotese(Hipotese, _, _, ProbBase, _),
    obrigatorios_confirmados(Hipotese),
    contar_opcionais_confirmados(Hipotese, Confirmados),
    total_opcionais(Hipotese, Total),
    (
        Total =:= 0 ->
        Bonus = 0
    ;
        Bonus is (Confirmados / Total) * 0.10
    ),
    ProbFinalTemp is ProbBase + Bonus,
    ProbFinal is min(1.0, ProbFinalTemp).

%
% Gera lista de diagnósticos possíveis ordenados por probabilidade decrescente
%

diagnostico(ResultadosOrdenados) :-
    findall(
        Prob-Hipotese,
        probabilidade_final(Hipotese, Prob),
        Resultados
    ),
    sort(1, @>=, Resultados, ResultadosOrdenados).

explicar_hipotese(Hipotese) :-
    hipotese(Hipotese, _, _, _, _),

    nl,

    writeln('Sintomas obrigatorios confirmados:'),
    forall(
        sintoma_obrigatorio(Hipotese, S),
        (
            resposta(S, sim),
            pergunta(S, Texto),
            write('- '), writeln(Texto)
        )
    ),

    nl,

    writeln('Sintomas opcionais confirmados:'),
    forall(
        (sintoma_opcional(Hipotese, S), resposta(S, sim)),
        (
            pergunta(S, Texto),
            write('- '), writeln(Texto)
        )
    ).

explicar_descarte(Hipotese) :-
    hipotese(Hipotese, Nome, _, _, _),
    hipotese_descartada(Hipotese),

    nl,
    write('Hipotese descartada: '), writeln(Nome),

    writeln('O motivo foi que a(s) seguintes pergunta(s) foram negadas:'),

    forall(
        sintoma_que_descartou(Hipotese, S),
        (
            pergunta(S, Texto),
            write('- '), writeln(Texto)
        )
    ).

membro(X, [X|_]).
membro(X, [_|T]) :- membro(X, T).

explicar_pergunta(Sintoma) :-
    pergunta(Sintoma, Texto),
    sintoma_categoria(Sintoma, Cat),

    nl,
    write('Pergunta: '), writeln(Texto),
    write('Categoria: '), writeln(Cat),

    findall(
        Nome,
        (
            (sintoma_obrigatorio(H, Sintoma)
            ;
             sintoma_opcional(H, Sintoma)),
            hipotese(H, Nome, _, _, _)
        ),
        Lista
    ),

    (
        Lista \= [] ->
            writeln('Essa pergunta foi feita porque esta relacionada com a seguinte hipotese:'),
            forall(
                membro(Nome, Lista),
                (
                    write('- '), writeln(Nome)
                )
            )
    ;
        writeln('Nenhuma hipotese relacionada encontrada.')
    ).

