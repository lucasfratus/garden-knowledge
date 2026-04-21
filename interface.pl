% Textos das perguntas ao usuário
% pergunta(+Id, +TextoDaPergunta)


% Água / Solo
pergunta(solo_encharcado,
    'O solo/substrato está encharcado ou há água acumulada no prato?').
pergunta(solo_seco,
    'O solo está completamente seco, duro ou se soltando das bordas do vaso?').
pergunta(rega_diaria_frequente,
    'Você rega a planta diariamente ou com frequência muito alta?').
pergunta(solo_nao_adubado_meses,
    'O solo não recebe adubo há mais de 3 meses?').
pergunta(solo_muito_acido,
    'O solo é muito ácido ou você sabe que o pH está abaixo de 5,5?').
pergunta(solo_calcario_ph_alto,
    'O solo parece calcário (esbranquiçado) ou pH acima de 7,0?').
pergunta(solo_arenoso_pobre,
    'O solo é muito arenoso e pobre em matéria orgânica?').
pergunta(solo_muito_arenoso,
    'O solo é predominantemente arenoso (grãos grossos, não retém umidade)?').
pergunta(solo_muito_argiloso_ou_arenoso,
    'O solo é muito argiloso (retém muita água) ou muito arenoso (seca rápido)?').
pergunta(agua_nao_penetra_ou_escoa_demais,
    'A água não penetra no solo (fica parada) ou escoa tão rápido que não é absorvida?').
pergunta(ph_medido_fora_faixa_ideal,
    'Você mediu o pH e ele está fora da faixa 5,5–6,5?').
pergunta(solo_muito_umido,
    'O local ou o solo se mantém constantemente úmido/encharcado?').
pergunta(solo_secando_rapidamente,
    'O solo seca muito rápido (em menos de 1 dia)?').
pergunta(solo_seca_rapidamente,
    'O substrato seca muito rápido por causa do sol intenso?').



% Folhas: aparência geral
pergunta(folhas_amarelas,
    'As folhas apresentam coloração amarelada de forma geral?').
pergunta(folhas_murchas,
    'As folhas estão murchas ou caídas?').
pergunta(folhas_murchas_solo_umido,
    'As folhas estão murchas mesmo estando o solo úmido?').
pergunta(bordas_pontas_folhas_secas_marrons,
    'As bordas ou pontas das folhas estão secas e marrons?').
pergunta(folhas_caindo,
    'Está havendo queda excessiva de folhas?').
pergunta(terra_soltando_bordas_vaso,
    'A terra está se soltando das bordas do vaso (retraindo)?').
 
% Folhas: deficiências nutricionais
pergunta(amarelamento_folhas_velhas_generalizado,
    'O amarelamento começa pelas folhas mais velhas (de baixo para cima), de forma uniforme?').
pergunta(coloracao_roxa_avermelhada_folhas_velhas,
    'As folhas mais velhas apresentam coloração arroxeada, avermelhada ou com manchas escuras?').
pergunta(necrose_bordas_folhas_velhas,
    'As bordas das folhas VELHAS estão necrosadas (secas/marrons/queimadas)?').
pergunta(manchas_necroticas_folhas,
    'Há manchas necróticas (tecido morto, marrom ou preto) espalhadas pelo limbo das folhas?').
pergunta(necrose_pontas_folhas_novas,
    'As pontas e bordas das folhas NOVAS estão necrosadas (escurecidas e mortas)?').
pergunta(clorose_internerval_folhas_velhas,
    'As folhas VELHAS mostram amarelamento entre as nervuras, mas as nervuras permanecem verdes?').
pergunta(clorose_internerval_folhas_novas,
    'As folhas NOVAS mostram amarelamento entre as nervuras, mas as nervuras permanecem verdes?').
pergunta(nervuras_verdes_tecido_folha_amarelo,
    'As nervuras ficam bem verdes enquanto o tecido ao redor fica amarelo intenso (contraste nítido)?').
pergunta(folhas_novas_enroladas_deformadas,
    'As folhas novas saem enroladas, retorcidas ou com formato anormal?').
pergunta(frutos_podridao_apical,
    'Os frutos apresentam podridão na ponta (lado oposto ao cabo)?').
pergunta(frutos_mal_formados,
    'Os frutos estão mal formados, pequenos ou caindo prematuramente?').
pergunta(raizes_curtas_escuras,
    'As raízes (se visíveis) estão curtas, escuras ou pouco desenvolvidas?').
pergunta(atraso_florescimento,
    'A planta atrasa muito para florescer ou não floresce na época esperada?').
pergunta(folhas_velhas_verde_escuras,
    'As folhas velhas estão com coloração verde-escura (mais escura que o normal)?').
pergunta(folhas_velhas_bronzeadas,
    'As folhas velhas estão com coloração bronzeada ou alaranjada?').



% Caule / raiz
pergunta(caule_mole_escurecido_base,
    'O caule está mole ou escurecido na base (ao nível do solo)?').
pergunta(raizes_escuras_podres_cheiro_ruim,
    'As raízes (se visíveis) estão escuras, moles ou com cheiro ruim?').
pergunta(caule_fino_fraco,
    'O caule está fino e fraco em relação ao tamanho da planta?').
pergunta(caule_estiolado_longo_fino_direcao_luz,
    'O caule cresceu de forma muito alongada e fina, sempre em direção à fonte de luz?').
pergunta(ramos_enfraquecidos,
    'Alguns ramos estão moles ou com crescimento muito reduzido?').
pergunta(raizes_superficiais_saindo_vaso,
    'As raízes estão saindo pelo fundo do vaso ou crescendo para a superfície?').



% Crescimento
pergunta(crescimento_muito_lento,
    'O crescimento da planta está muito lento para a época do ano?').
pergunta(reducao_crescimento,
    'A planta parou de crescer ou o crescimento reduziu muito?').
pergunta(folhas_novas_pequenas_palidas,
    'As novas folhas estão saindo pequenas e com cor pálida?').
pergunta(folhas_novas_pequenas,
    'As folhas novas estão saindo menores que o normal?').
pergunta(planta_frequentemente_doente,
    'A planta tem ficado doente com frequência nos últimos meses?').
pergunta(multiplas_deficiencias_sem_melhora_adubo,
    'A planta apresenta vários problemas diferentes e não melhora mesmo com adubação?').



% Pragas: insetos visíveis
pergunta(insetos_agrupados_brotos_folhas_novas,
    'Há insetos pequenos (verdes, pretos ou amarelos) agrupados nos brotos e folhas novas?').
pergunta(pontilhado_prateado_branco_folhas,
    'As folhas apresentam pontilhado branco, prateado ou bronzeado na superfície?').
pergunta(carocinhos_escamas_caule_folhas,
    'Há pequenos carocinhos ou escamas (brancos, marrons ou cinza) fixados no caule ou folhas?').
pergunta(moscas_brancas_voo_face_inferior,
    'Ao sacudir a planta, há pequenas moscas brancas que voam, especialmente na face inferior das folhas?').
pergunta(folhas_com_buracos_e_trilha_viscosa,
    'As folhas têm buracos irregulares e há rastro viscoso/prateado próximo?').
 
% Pragas: sintomas indiretos
pergunta(folhas_enroladas_deformadas_brotos,
    'Os brotos e folhas novas estão enrolados ou deformados?').
pergunta(substancia_pegajosa_melada_folhas,
    'Há substância pegajosa (melada) sobre as folhas ou superfícies sob a planta?').
pergunta(presenca_formigas_plantas,
    'Há formigas subindo constantemente pelo caule ou nos ramos?').
pergunta(fumagina_fungo_preto_folhas,
    'Há uma camada de fuligem preta (fumagina) sobre as folhas?').
pergunta(amarelamento_localizado,
    'O amarelamento é localizado (em pontos ou regiões, não uniforme)?').
pergunta(teias_finas_face_inferior_folhas,
    'Há teias finas e delicadas na face inferior das folhas?').
pergunta(folhas_aspecto_bronzeado_envelhecido,
    'As folhas têm aspecto bronzeado ou envelhecido precocemente?').
pergunta(clima_quente_seco,
    'O clima está quente e seco nos últimos dias?').
pergunta(queda_prematura_folhas,
    'Há queda prematura de folhas (antes de envelhecer naturalmente)?').
pergunta(queda_folhas,
    'As folhas estão caindo de forma geral, independente da idade delas?').
pergunta(plantas_enfraquecidas_sem_viço,
    'A planta está geral enfraquecida, sem viço, mesmo com rega e adubação normais?').
pergunta(danos_noturnos_maiores_manha,
    'Os danos parecem maiores pela manhã, como se o ataque ocorresse à noite?').
pergunta(local_umido_sombreado,
    'A planta fica em local úmido e sombreado?').
pergunta(brotacoes_novas_consumidas,
    'As brotações novas estão sendo consumidas/destruídas?').
pergunta(insetos_sugadores_presentes,
    'Há presença visível de pulgões, cochonilhas ou mosca-branca na planta?').
pergunta(folhas_com_aspecto_sujo_enegrecido,
    'As folhas parecem sujas, com depósito escuro difícil de remover?').
pergunta(amarelamento_irregular_folhas,
    'O amarelamento das folhas é irregular (mosaico), não uniforme?').



% Doenças: fungos
pergunta(po_branco_pulverulento_folhas,
    'Há pó branco e pulverulento nas folhas (aspecto de "farinha")?').
pergunta(camada_negra_fuliginosa_folhas,
    'Há camada negra fuliginosa cobrindo a superfície das folhas (fumagina)?').
pergunta(manchas_escuras_aquosas_folhas,
    'As folhas apresentam manchas escuras, aquosas ou com aspecto encharcado?').
pergunta(mofo_cinza_flores_folhas_frutos,
    'Há mofo cinza-acastanhado sobre flores, folhas ou frutos?').
pergunta(folhas_amarelando_sob_po_branco,
    'As folhas estão amarelando na área coberta ou ao redor do pó branco?').
pergunta(folhas_secas_caindo_apos_po_branco,
    'As folhas afetadas pelo pó branco estão secando e caindo?').
pergunta(caules_com_manchas_brancas,
    'Os caules também apresentam manchas brancas e pulverulentas?').
pergunta(alta_umidade_ventilacao_ruim,
    'O ambiente é muito úmido e/ou com pouca circulação de ar?').
pergunta(manchas_com_halo_amarelo,
    'As manchas nas folhas têm um halo amarelo ao redor?').
pergunta(folhas_caindo_com_manchas,
    'As folhas com manchas estão caindo com facilidade?').
pergunta(rega_molhando_folhagem,
    'Você costuma molhar as folhas ao regar (rega por aspersão/cima)?').
pergunta(flores_marrons_moles,
    'As flores estão ficando marrons e moles (como "cozidas")?').
pergunta(partes_apodrecendo_molengas,
    'Partes da planta (caule, folhas, flores) estão apodrecendo e ficando moles?').
pergunta(ambiente_fechado_sem_ar,
    'A planta fica em ambiente muito fechado, como quarto sem ventilação?').



% Luminosidade
pergunta(manchas_claras_descoradas_expostas_sol,
    'Há manchas claras, brancas ou amarelo-pálido nas folhas, como se tivessem sido descoradas?').
pergunta(planta_sol_direto_mais_6h,
    'A planta fica em sol direto por mais de 6 horas por dia?').
pergunta(bordas_folhas_secas_queimadas,
    'As bordas das folhas estão secas e queimadas nas pontas?').
pergunta(descoloracao_uniforme_lado_sol,
    'A descoloração é mais intensa no lado da planta voltado para o sol?').
pergunta(folhas_pequenas_palidas_cor_verde_fraco,
    'As folhas são pequenas e com coloração verde pálida ou amarelada?').
pergunta(queda_excessiva_folhas,
    'A planta está perdendo muitas folhas sem aparente motivo?').
pergunta(planta_local_escuro_sem_janela,
    'A planta está em local escuro, longe de janelas ou sem luz natural?').
pergunta(flores_nao_aparecem_botoes_caem,
    'A planta nunca floresce ou os botões caem antes de abrir?').
