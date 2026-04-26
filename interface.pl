% Textos das perguntas ao usuario
% pergunta(+Id, +TextoDaPergunta)


% Agua / Solo
pergunta(solo_encharcado,
    'O solo/substrato esta encharcado ou ha agua acumulada no prato?').
pergunta(solo_seco,
    'O solo esta completamente seco, duro ou se soltando das bordas do vaso?').
pergunta(rega_diaria_frequente,
    'Voce rega a planta diariamente ou com frequencia muito alta?').
pergunta(solo_nao_adubado_meses,
    'O solo nao recebe adubo ha mais de 3 meses?').
pergunta(solo_muito_acido,
    'O solo eh muito acido ou voce sabe que o pH esta abaixo de 5,5?').
pergunta(solo_calcario_ph_alto,
    'O solo parece calcario (esbranquicado) ou pH acima de 7,0?').
pergunta(solo_arenoso_pobre,
    'O solo eh muito arenoso e pobre em materia organica?').
pergunta(solo_muito_arenoso,
    'O solo eh predominantemente arenoso (graos grossos, nao retem umidade)?').
pergunta(solo_muito_argiloso_ou_arenoso,
    'O solo eh muito argiloso (retem muita agua) ou muito arenoso (seca rapido)?').
pergunta(agua_nao_penetra_ou_escoa_demais,
    'A agua nao penetra no solo (fica parada) ou escoa tao rapido que nao eh absorvida?').
pergunta(ph_medido_fora_faixa_ideal,
    'Voce mediu o pH e ele esta fora da faixa 5,5-6,5?').
pergunta(solo_muito_umido,
    'O local ou o solo se mantem constantemente umido/encharcado?').
pergunta(solo_secando_rapidamente,
    'O solo seca muito rapido (em menos de 1 dia)?').
pergunta(solo_seca_rapidamente,
    'O substrato seca muito rapido por causa do sol intenso?').



% Folhas: aparencia geral
pergunta(folhas_amarelas,
    'As folhas apresentam coloracao amarelada de forma geral?').
pergunta(folhas_murchas,
    'As folhas estao murchas ou caidas?').
pergunta(folhas_murchas_solo_umido,
    'As folhas estao murchas mesmo estando o solo umido?').
pergunta(bordas_pontas_folhas_secas_marrons,
    'As bordas ou pontas das folhas estao secas e marrons?').
pergunta(folhas_caindo,
    'Esta havendo queda excessiva de folhas?').
pergunta(terra_soltando_bordas_vaso,
    'A terra esta se soltando das bordas do vaso (retraindo)?').

% Folhas: deficiencias nutricionais
pergunta(amarelamento_folhas_velhas_generalizado,
    'O amarelamento comeca pelas folhas mais velhas (de baixo para cima), de forma uniforme?').
pergunta(coloracao_roxa_avermelhada_folhas_velhas,
    'As folhas mais velhas apresentam coloracao arroxeada, avermelhada ou com manchas escuras?').
pergunta(necrose_bordas_folhas_velhas,
    'As bordas das folhas VELHAS estao necrosadas (secas/marrons/queimadas)?').
pergunta(manchas_necroticas_folhas,
    'Ha manchas necroticas (tecido morto, marrom ou preto) espalhadas pelo limbo das folhas?').
pergunta(necrose_pontas_folhas_novas,
    'As pontas e bordas das folhas NOVAS estao necrosadas (escurecidas e mortas)?').
pergunta(clorose_internerval_folhas_velhas,
    'As folhas VELHAS mostram amarelamento entre as nervuras, mas as nervuras permanecem verdes?').
pergunta(clorose_internerval_folhas_novas,
    'As folhas NOVAS mostram amarelamento entre as nervuras, mas as nervuras permanecem verdes?').
pergunta(nervuras_verdes_tecido_folha_amarelo,
    'As nervuras ficam bem verdes enquanto o tecido ao redor fica amarelo intenso (contraste nitido)?').
pergunta(folhas_novas_enroladas_deformadas,
    'As folhas novas saem enroladas, retorcidas ou com formato anormal?').
pergunta(frutos_podridao_apical,
    'Os frutos apresentam podridao na ponta (lado oposto ao cabo)?').
pergunta(frutos_mal_formados,
    'Os frutos estao mal formados, pequenos ou caindo prematuramente?').
pergunta(raizes_curtas_escuras,
    'As raizes (se visiveis) estao curtas, escuras ou pouco desenvolvidas?').
pergunta(atraso_florescimento,
    'A planta atrasa muito para florescer ou nao floresce na epoca esperada?').
pergunta(folhas_velhas_verde_escuras,
    'As folhas velhas estao com coloracao verde-escura (mais escura que o normal)?').
pergunta(folhas_velhas_bronzeadas,
    'As folhas velhas estao com coloracao bronzeada ou alaranjada?').



% Caule / raiz
pergunta(caule_mole_escurecido_base,
    'O caule esta mole ou escurecido na base (ao nivel do solo)?').
pergunta(raizes_escuras_podres_cheiro_ruim,
    'As raizes (se visiveis) estao escuras, moles ou com cheiro ruim?').
pergunta(caule_fino_fraco,
    'O caule esta fino e fraco em relacao ao tamanho da planta?').
pergunta(caule_estiolado_longo_fino_direcao_luz,
    'O caule cresceu de forma muito alongada e fina, sempre em direcao a fonte de luz?').
pergunta(ramos_enfraquecidos,
    'Alguns ramos estao moles ou com crescimento muito reduzido?').
pergunta(raizes_superficiais_saindo_vaso,
    'As raizes estao saindo pelo fundo do vaso ou crescendo para a superficie?').



% Crescimento
pergunta(crescimento_muito_lento,
    'O crescimento da planta esta muito lento para a epoca do ano?').
pergunta(reducao_crescimento,
    'A planta parou de crescer ou o crescimento reduziu muito?').
pergunta(folhas_novas_pequenas_palidas,
    'As novas folhas estao saindo pequenas e com cor palida?').
pergunta(folhas_novas_pequenas,
    'As folhas novas estao saindo menores que o normal?').
pergunta(planta_frequentemente_doente,
    'A planta tem ficado doente com frequencia nos ultimos meses?').
pergunta(multiplas_deficiencias_sem_melhora_adubo,
    'A planta apresenta varios problemas diferentes e nao melhora mesmo com adubacao?').



% Pragas: insetos visiveis
pergunta(insetos_agrupados_brotos_folhas_novas,
    'Ha insetos pequenos (verdes, pretos ou amarelos) agrupados nos brotos e folhas novas?').
pergunta(pontilhado_prateado_branco_folhas,
    'As folhas apresentam pontilhado branco, prateado ou bronzeado na superficie?').
pergunta(carocinhos_escamas_caule_folhas,
    'Ha pequenos carocinhos ou escamas (brancos, marrons ou cinza) fixados no caule ou folhas?').
pergunta(moscas_brancas_voo_face_inferior,
    'Ao sacudir a planta, ha pequenas moscas brancas que voam, especialmente na face inferior das folhas?').
pergunta(folhas_com_buracos_e_trilha_viscosa,
    'As folhas tem buracos irregulares e ha rastro viscoso/prateado proximo?').

% Pragas: sintomas indiretos
pergunta(folhas_enroladas_deformadas_brotos,
    'Os brotos e folhas novas estao enrolados ou deformados?').
pergunta(substancia_pegajosa_melada_folhas,
    'Ha substancia pegajosa (melada) sobre as folhas ou superficies sob a planta?').
pergunta(presenca_formigas_plantas,
    'Ha formigas subindo constantemente pelo caule ou nos ramos?').
pergunta(fumagina_fungo_preto_folhas,
    'Ha uma camada de fuligem preta (fumagina) sobre as folhas?').
pergunta(amarelamento_localizado,
    'O amarelamento eh localizado (em pontos ou regioes, nao uniforme)?').
pergunta(teias_finas_face_inferior_folhas,
    'Ha teias finas e delicadas na face inferior das folhas?').
pergunta(folhas_aspecto_bronzeado_envelhecido,
    'As folhas tem aspecto bronzeado ou envelhecido precocemente?').
pergunta(clima_quente_seco,
    'O clima esta quente e seco nos ultimos dias?').
pergunta(queda_prematura_folhas,
    'Ha queda prematura de folhas (antes de envelhecer naturalmente)?').
pergunta(queda_folhas,
    'As folhas estao caindo de forma geral, independente da idade delas?').
pergunta(plantas_enfraquecidas_sem_vico,
    'A planta esta geral enfraquecida, sem vico, mesmo com rega e adubacao normais?').
pergunta(danos_noturnos_maiores_manha,
    'Os danos parecem maiores pela manha, como se o ataque ocorresse a noite?').
pergunta(local_umido_sombreado,
    'A planta fica em local umido e sombreado?').
pergunta(brotacoes_novas_consumidas,
    'As brotacoes novas estao sendo consumidas/destruidas?').
pergunta(insetos_sugadores_presentes,
    'Ha presenca visivel de pulgoes, cochonilhas ou mosca-branca na planta?').
pergunta(folhas_com_aspecto_sujo_enegrecido,
    'As folhas parecem sujas, com deposito escuro dificil de remover?').
pergunta(amarelamento_irregular_folhas,
    'O amarelamento das folhas eh irregular (mosaico), nao uniforme?').



% Doencas
pergunta(po_branco_pulverulento_folhas,
    'Ha po branco e pulverulento nas folhas (aspecto de farinha)?').
pergunta(camada_negra_fuliginosa_folhas,
    'Ha camada negra fuliginosa cobrindo a superficie das folhas?').
pergunta(manchas_escuras_aquosas_folhas,
    'As folhas apresentam manchas escuras, aquosas ou com aspecto encharcado?').
pergunta(mofo_cinza_flores_folhas_frutos,
    'Ha mofo cinza-acastanhado sobre flores, folhas ou frutos?').
pergunta(folhas_amarelando_sob_po_branco,
    'As folhas estao amarelando na area coberta ou ao redor do po branco?').
pergunta(folhas_secas_caindo_apos_po_branco,
    'As folhas afetadas pelo po branco estao secando e caindo?').
pergunta(caules_com_manchas_brancas,
    'Os caules tambem apresentam manchas brancas e pulverulentas?').
pergunta(alta_umidade_ventilacao_ruim,
    'O ambiente eh muito umido e/ou com pouca circulacao de ar?').
pergunta(manchas_com_halo_amarelo,
    'As manchas nas folhas tem um halo amarelo ao redor?').
pergunta(folhas_caindo_com_manchas,
    'As folhas com manchas estao caindo com facilidade?').
pergunta(rega_molhando_folhagem,
    'Voce costuma molhar as folhas ao regar?').
pergunta(flores_marrons_moles,
    'As flores estao ficando marrons e moles?').
pergunta(partes_apodrecendo_molengas,
    'Partes da planta estao apodrecendo e ficando moles?').
pergunta(ambiente_fechado_sem_ar,
    'A planta fica em ambiente muito fechado, como quarto sem ventilacao?').



% Luminosidade
pergunta(manchas_claras_descoradas_expostas_sol,
    'Ha manchas claras, brancas ou amarelo-palido nas folhas?').
pergunta(planta_sol_direto_mais_6h,
    'A planta fica em sol direto por mais de 6 horas por dia?').
pergunta(bordas_folhas_secas_queimadas,
    'As bordas das folhas estao secas e queimadas nas pontas?').
pergunta(descoloracao_uniforme_lado_sol,
    'A descoloracao eh mais intensa no lado da planta voltado para o sol?').
pergunta(folhas_pequenas_palidas_cor_verde_fraco,
    'As folhas sao pequenas e com coloracao verde palida ou amarelada?').
pergunta(queda_excessiva_folhas,
    'A planta esta perdendo muitas folhas sem aparente motivo?').
pergunta(planta_local_escuro_sem_janela,
    'A planta esta em local escuro, longe de janelas ou sem luz natural?').
pergunta(flores_nao_aparecem_botoes_caem,
    'A planta nunca floresce ou os botoes caem antes de abrir?').

:- consult('motor.pl').

realizar_entrevista :-
    perguntar_proxima_pergunta.

perguntar_proxima_pergunta :-
    sintoma_obrigatorio(Hip, Sintoma),
    hipotese_possivel(Hip),
    \+ resposta(Sintoma, _),
    !,
    pergunta(Sintoma, Texto),
    perguntar_sintoma(Sintoma, Texto),
    perguntar_proxima_pergunta.

perguntar_proxima_pergunta :-
    sintoma_opcional_relevante(Sintoma),
    \+ resposta(Sintoma, _),
    !,
    pergunta(Sintoma, Texto),
    perguntar_sintoma(Sintoma, Texto),
    perguntar_proxima_pergunta.

perguntar_proxima_pergunta.

perguntar_sintoma(Sintoma, Texto) :-
    nl,
    writeln(Texto),
    writeln('Digite sim. ou nao.'),
    read(Resposta),
    assertz(resposta(Sintoma, Resposta)).
    
iniciar_diagnostico :-
    writeln('=== Diagnostico de Jardinagem ==='),
    writeln('Este prototipo eh apenas informativo. Consulte um especialista para diagnostico ou recomendacao correta e precisa.'),
    retractall(resposta(_, _)),
    realizar_entrevista,
    diagnostico(Resultados),
    mostrar_resultados(Resultados),
    menu_explicacoes.

mostrar_resultados([]) :-
    nl,
    writeln('Nenhuma hipotese foi confirmada com os sintomas informados.').

mostrar_resultados(Resultados) :-
    nl,
    writeln('=== Resultados do Diagnostico ==='),
    mostrar_lista_resultados(Resultados).

mostrar_lista_resultados([]).

mostrar_lista_resultados([Prob-Hipotese | Resto]) :-
    hipotese(Hipotese, Nome, Categoria, _, Descricao),
    Percentual is Prob * 100,

    nl,

    write('Hipotese: '), writeln(Nome),
    write('Categoria: '), writeln(Categoria),
    write('Probabilidade: '), write(Percentual), writeln('%'),
    write('Descricao: '), writeln(Descricao),

    % Explicabilidade
    explicar_hipotese(Hipotese),

    nl,

    writeln('Recomendacoes:'),
    mostrar_recomendacoes(Hipotese),

    mostrar_lista_resultados(Resto).

mostrar_recomendacoes(Hipotese) :-
    forall(
        recomendacao(Hipotese, Ordem, Descricao),
        (
            write(Ordem),
            write(' - '),
            writeln(Descricao)
        )
    ).


explicar_sintoma :-
    nl,
    listar_perguntas_feitas,
    writeln('Digite o id da pergunta:'),
    read(IdPergunta),
    (
        resposta(IdPergunta, _) ->
            explicar_pergunta(IdPergunta)
    ;
        writeln('Essa pergunta nao foi feita durante o diagnostico.')
    ).

explicar_hipotese_descartada :-
    nl,
    writeln('Digite o id da hipotese que deseja verificar:'),
    listar_ids_hipoteses,
    read(Hipotese),
    (
        hipotese_descartada(Hipotese) ->
            explicar_descarte(Hipotese)
    ;
        writeln('Essa hipotese nao foi descartada.')
    ).

listar_ids_hipoteses :-
    forall(
        hipotese(Id, Nome, _, _, _),
        (
            write('- '),
            write(Id),
            write(' ('),
            write(Nome),
            writeln(')')
        )
    ).

listar_perguntas_feitas :-
    findall(Sintoma, resposta(Sintoma, _), Lista),
    sort(Lista, Unicas),

    writeln('Perguntas realizadas durante o diagnostico:'),
    forall(
        membro(S, Unicas),
        (
            pergunta(S, Texto),
            write('- '), write(S), write(' -> '), writeln(Texto)
        )
    ).

menu :-
    nl,
    writeln('=== Sistema Especialista de Apoio a Jardinagem ==='),
    writeln('(1.) - Iniciar diagnostico'),
    writeln('(2.) - Gerenciar hipoteses'),
    writeln('(3.) - Sair'),
    read(Opcao),
    executar_opcao(Opcao).

menu_explicacoes :-
    nl,
    writeln('=== Explicacoes adicionais ==='),
    writeln('(1.) - Explicar por que uma hipotese nao foi diagnosticada'),
    writeln('(2.) - Explicar uma pergunta feita'),
    writeln('(3.) - Voltar ao menu'),
    read(Opcao),
    executar_explicacao(Opcao).

executar_explicacao(1) :-
    explicar_hipotese_descartada,
    menu_explicacoes.

executar_explicacao(2) :-
    explicar_sintoma,
    menu_explicacoes.

executar_explicacao(3).

executar_explicacao(_) :-
    writeln('Opcao invalida.'),
    menu_explicacoes.

menu_crud :-
    nl,
    writeln('=== CRUD de Hipoteses ==='),
    writeln('(1.) - Listar hipoteses'),
    writeln('(2.) - Adicionar hipotese'),
    writeln('(3.) - Alterar hipotese'),
    writeln('(4.) - Remover hipotese'),
    writeln('(5.) - Voltar'),
    read(Opcao),
    executar_crud(Opcao).

mostrar_hipoteses_numeradas([], _).

mostrar_hipoteses_numeradas([Id-Nome-Categoria-Prob | Resto], N) :-
    nl,
    write(N), writeln(')'),
    write('   ID: '), writeln(Id),
    write('   Nome: '), writeln(Nome),
    write('   Categoria: '), writeln(Categoria),
    write('   Probabilidade: '), writeln(Prob),

    N1 is N + 1,
    mostrar_hipoteses_numeradas(Resto, N1).

executar_crud(1) :-
    findall(
        Id-Nome-Categoria-Prob,
        hipotese(Id, Nome, Categoria, Prob, _),
        Lista
    ),
    mostrar_hipoteses_numeradas(Lista, 1),
    menu_crud.

executar_crud(2) :-
    writeln('Id:'), read(Id),
    writeln('Nome:'), read(Nome),
    writeln('Categoria:'), read(Categoria),
    writeln('Probabilidade (0.0 a 1.0):'), read(Prob),
    writeln('Descricao:'), read(Desc),

    assertz(hipotese(Id, Nome, Categoria, Prob, Desc)),

    writeln('Hipotese adicionada!'),
    menu_crud.

executar_crud(3) :-
    writeln('Digite o Id da hipotese que deseja alterar:'),
    read(Id),

    (
        hipotese(Id, _, _, _, _) ->
            writeln('Novo nome:'),
            read(NovoNome),

            writeln('Nova categoria:'),
            read(NovaCategoria),

            writeln('Nova probabilidade (0.0 a 1.0):'),
            read(NovaProbabilidade),

            writeln('Nova descricao:'),
            read(NovaDescricao),

            retractall(hipotese(Id, _, _, _, _)),
            assertz(hipotese(Id, NovoNome, NovaCategoria, NovaProbabilidade, NovaDescricao)),

            writeln('Hipotese alterada com sucesso!')
    ;
            writeln('Erro: hipotese nao encontrada.')
    ),

    menu_crud.

executar_crud(4) :-
    writeln('Digite o Id da hipotese a remover:'),
    read(Id),

    retractall(hipotese(Id, _, _, _, _)),
    retractall(sintoma_obrigatorio(Id, _)),
    retractall(sintoma_opcional(Id, _)),
    retractall(recomendacao(Id, _, _)),

    writeln('Hipotese removida!'),
    menu_crud.

executar_crud(5) :-
    menu.

executar_opcao(1) :-
    iniciar_diagnostico,
    menu.

executar_opcao(2) :-
    menu_crud.

executar_opcao(3) :-
    writeln('Encerrando o sistema.').

executar_opcao(_) :-
    writeln('Opcao invalida.'),
    menu.
