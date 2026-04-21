% Formato:
%% hipotese(+Id, +Nome, +Probabilidade, +Categoria, +Descrição, +Recomendação)
%
% A FAZER: Probabilidade: varia de 0.0 a 1.0
%
% OBS: '+' é um padrão de instanciação, utilizado quando o argumento precisa estar completamente instanciado)

%
% Quantidade de água
%

hipotese(excesso_agua,
	 'Excesso de água',
	 quantidade_agua,
	 'A planta recebe água em excesso, favorecendo podridões',
	 'Reduza a frequência da regagem ou a quantidade de água utilizada. Caso a planta esteja em um vazo, verifique as saídas de água.'
).

hipotese(falta_agua,
	 'Falta de água',
	 quantidade_agua,
	 'A plantia recebe quantidade insuficiente de água.',
	 'Aumente a frequência da regagem ou a quantidade de água utilizada.'
).

%
% Nutrição
%

hipotese(deficiencia_nitrogenio,
	'Deficiência de nitrogênio',
	nutricao,
	'O déficit de nitrogênio causa clorose (perda de pigmento) generalizada, inicialmente nas folhas mais velhas. Causa também redução acentuada do crescimento.',
	'Aplique adubo nitrogenado ou adubo orgânico. Repita a cada 15 dias.'
).


hipotese(deficiencia_fosforo,
	'Deficiência de fósforo',
	nutricao,
	'A falta de fósforo causa coloração verde-escura com tons avermelhados/roxos nas folhas mais antigas, além de redução do crescimento',
	'Aplique superfosfato simples ou fosfato natural. Certifique-se de que o pH do solo está entre 6,0 e 7,0 para garantir uma melhor absorção.',
).

hipotese(deficiencia_potassio,
	'Deficiência de potássio',
	nutricao,
	'A falta de potássio causa clorose e queimadura (necrose) nas bordas de folhas mais velhas.',
       'Aplique cloreto de potássio ou sulfato de potássio.'
).

hipotese(deficiencia_calcio,
	'Deficiência de cálcio',
	nutricao,
	'A falta de cálcio causa necrose nas pontas e bordas de folhas novas. Folhas enroladas também são um sintoma. Pode causar podridão nas pontas de frutos.'
	'Aplique calcário dolomítico ou cloreto de cálcio foliar. Mantenha o pH do solo entre 6,0 e 7,0 para garantir a absorção adequada.'
).

hipotese(deficiencia_magnesio,
	'Deficiência de magnésio',
	nutricao,
	'A falta de magnésio causa coloração verde nas nervuras e amarela na área foliar de folhas antigas.',
	'Aplique sulfato de magnésio.'
).

hipotese(deficiencia_ferro,
	'Deficiência de ferro (Clorose Férrica)',
	nutricao,
	'A falta de ferro causa coloração verde nas nervuras e amarela na área foliar de folhas novas. É frequente em solos com pH alto.'
	'Aplique quelato de ferro foliar. Corrija o pH do solo para 5,5-6,5 com enxofre agrícola, se necessário.'
).

%
% Pragas
%

hipotese(pulgao,
	'Infestação de pulgões',
	praga,
	'Pulgões se concentram em brotos e folhas novas. Atraem formigas.',
	'Aplique azadiractina ou sabão potássico. Caso haja colônias, elimine-as com jatos de água. Repita a cada 7 dias. Joaninhas são inimigas naturais de pulgões.'
).

hipotese(cochonilha,
	'Infestação de cochonilhas',
	praga,
	'Cochonilhas fixam-se em caules e folhas. Formigas disseminam a praga.',
	'Remova manualmente com um cotonete umidecido em álcool. Aplique óleo mineral ou inseticida sistêmico. Repita a cada 7 dias. Joaninhas são inimigas naturais de pulgões.'
).

hipotese(acaro,
	'Infestação de ácaros',
	praga,
	'Ácaros são pragas que sugam seiva e causam pontilhados prateados nas folhas. Profileram em clima quente e seco. Ficam localizados na face interior das folhas.',
	'Aplique acaricida específico ou óleo de nim. Aumente a umidade ao redor das plantas. Trate preferencialmente a face interior das folhas. Repita em 7 dias.'
).

hipotese(mosca_branca,
	'Infestação de mosca-branca',
	praga,
	'Mosca-branca coloniza a face interior das folhas, causando clorose e transmitindo viroses. Épocas mais secas favorecem a multiplicação. Ataca muitas espécies.',
	'Aplique inseticida sistêmico ou sabão potássico na face interior. Use armadilhas adesivas para monitoramento.'
).

hipotese(lesma_ou_caracol,
	'Ataque de lesmas ou caracóis',
	praga,
	'Lesmas e caracóis são pragas de hábito noturno que raspam e comem folhas e brotos. Preferem ambientes úmidos.',
	'Colete manualmente ao iniciar o entardecer. Faça barreiras de cal ou de cinzas. Aplique moluscicida com metaldeído ou fosfato férrico.'
).


%
% Doenças
%

hipotese(oidio,
    'Oídio',
    doenca,
    'Oídio é doença fúngica que forma camada branca pulverulenta (aspecto de farinha) em folhas e caules. Se prolifera em climas quentes e úmidos. Relatado em roseiras, abóboras, ipês e ornamentais.',
    'Aplique fungicida à base de enxofre. Melhore a circulação de ar.'
).

hipotese(fumagina,
    'Fumagina',
    doenca,
    'Fungo negro que se desenvolve sobre o honeydew excretado por pulgões, cochonilhas ou mosca-branca. Reduz fotossíntese e respiração. Formigas disseminam o fungo.',
    'Controle as pragas causadoras (pulgões/cochonilhas). Lave as folhas com solução de sabão neutro. Aplique fungicida cúprico.'
).

hipotese(mancha_foliar,
    'Manchas Foliares (Fungos/Bactérias)',
    doenca,
    'Manchas escuras, aquosas ou com halo amarelo indicam fungos ou bactérias que destroem o tecido foliar. Favorecidas por alta umidade e rega por cima (molhando folhagem).',
    'Remova as folhas afetadas. Aplique fungicida cúprico ou bactericida. Evite molhar a folhagem ao regar.'
).

hipotese(mofo_cinzento,
    'Mofo Cinzento',
    doenca,
    'Fungo que causa podridão acinzentada em flores, frutos e folhas. Favorecido por excesso de umidade e ventilação deficiente em ambientes fechados.',
    'Remova imediatamente as partes afetadas. Aplique fungicida sistêmico. Melhore a ventilação e evite umidade sobre as folhas.'
).

%
% Luminosidade
%

hipotese(excesso_luz,
    'Queimadura por Excesso de Luz Solar',
    luminosidade,
    'Exposição excessiva ao sol direto destrói cloroplastos, causando manchas claras, esbranquiçadas ou amarelas no lado da folha exposto. Mais comum em plantas de sombra expostas ao sol.',
    'Mova a planta para local com luz indireta ou meia-sombra. Instale sombrite se necessário. Mantenha boa hidratação durante a recuperação.'
).
 
hipotese(falta_luz,
    'Falta de Luminosidade / Etiolamento',
    luminosidade,
    'Sem luz suficiente, a planta não realiza fotossíntese adequada. O caule cresce estiolado (alongado e fino) em direção à luz, e as folhas ficam pálidas e pequenas.',
    'Mova para local com mais luz natural. Para ambientes internos sem janelas, use lâmpadas de crescimento (grow lights com espectro completo).'
).


%
% Solo
%

hipotese(solo_inadequado,
    'Solo Inadequado / pH Incorreto',
    solo,
    'pH incorreto bloqueia a absorção de nutrientes mesmo com adubação.',
    'Faça análise de pH. Para solo ácido: aplique calcário dolomítico. Para solo alcalino: aplique enxofre agrícola. Considere troca completa do substrato.'
).


%
% Sintomas obrigatórios para cada hipótese
%
% sintoma_obrigatorio(+HipoteseId, +SintomaId)
%
% Se um dos sintomas obrigatórios estiver ausente, a probabilidade da hipótese torna-se zero e a hipótese é descartada
%

% Água
sintoma_obrigatorio(excesso_agua, solo_encharcado).
sintoma_obrigatorio(excesso_agua, folhas_murchas_solo_umido).
 
sintoma_obrigatorio(falta_agua, solo_seco).
sintoma_obrigatorio(falta_agua, folhas_murchas).

% Nutrição: folhas velhas
sintoma_obrigatorio(deficiencia_nitrogenio, amarelamento_folhas_velhas_generalizado).
sintoma_obrigatorio(deficiencia_nitrogenio, crescimento_muito_lento).
 
sintoma_obrigatorio(deficiencia_fosforo, coloracao_roxa_avermelhada_folhas_velhas).
sintoma_obrigatorio(deficiencia_fosforo, crescimento_muito_lento).
 
sintoma_obrigatorio(deficiencia_potassio, necrose_bordas_folhas_velhas).
sintoma_obrigatorio(deficiencia_potassio, manchas_necroticas_folhas).
 
sintoma_obrigatorio(deficiencia_magnesio, clorose_internerval_folhas_velhas).

% Nutrição: folhas novas
sintoma_obrigatorio(deficiencia_calcio, necrose_pontas_folhas_novas).
sintoma_obrigatorio(deficiencia_calcio, folhas_novas_enroladas_deformadas).
 
sintoma_obrigatorio(deficiencia_ferro, clorose_internerval_folhas_novas).
sintoma_obrigatorio(deficiencia_ferro, nervuras_verdes_tecido_folha_amarelo).

% Pragas
sintoma_obrigatorio(pulgao, insetos_agrupados_brotos_folhas_novas).
sintoma_obrigatorio(pulgao, substancia_pegajosa_melada_folhas).
 
sintoma_obrigatorio(acaro, pontilhado_prateado_branco_folhas).
sintoma_obrigatorio(acaro, teias_finas_face_inferior_folhas).
 
sintoma_obrigatorio(cochonilha, carocinhos_escamas_caule_folhas).
sintoma_obrigatorio(cochonilha, substancia_pegajosa_melada_folhas).
 
sintoma_obrigatorio(mosca_branca, moscas_brancas_voo_face_inferior).
sintoma_obrigatorio(mosca_branca, amarelamento_irregular_folhas).
 
sintoma_obrigatorio(lesma_ou_caracol, folhas_com_buracos_e_trilha_viscosa).
sintoma_obrigatorio(lesma_ou_caracol, danos_noturnos_maiores_manha).

% Doenças
sintoma_obrigatorio(oidio, po_branco_pulverulento_folhas).
sintoma_obrigatorio(oidio, alta_umidade_ventilacao_ruim).
 
sintoma_obrigatorio(fumagina, camada_negra_fuliginosa_folhas).
sintoma_obrigatorio(fumagina, insetos_sugadores_presentes).
 
sintoma_obrigatorio(mancha_foliar, manchas_escuras_aquosas_folhas).
sintoma_obrigatorio(mancha_foliar, manchas_com_halo_amarelo).
 
sintoma_obrigatorio(mofo_cinzento, mofo_cinza_flores_folhas_frutos).
sintoma_obrigatorio(mofo_cinzento, alta_umidade_ventilacao_ruim).
 
% Luminosidade
sintoma_obrigatorio(excesso_luz, manchas_claras_descoradas_expostas_sol).
sintoma_obrigatorio(excesso_luz, descoloracao_uniforme_lado_sol).
 
sintoma_obrigatorio(falta_luz, caule_estiolado_longo_fino_direcao_luz).
sintoma_obrigatorio(falta_luz, folhas_pequenas_palidas_cor_verde_fraco).
 
% Solo
sintoma_obrigatorio(solo_inadequado, multiplas_deficiencias_sem_melhora_adubo).
sintoma_obrigatorio(solo_inadequado, ph_medido_fora_faixa_ideal).


%
% Sintomas opcionais para cada hipótese
% sintoma_opcional(+HipoteseId, +SintomaId)
%

% Excesso de água
sintoma_opcional(excesso_agua, folhas_amarelas).
sintoma_opcional(excesso_agua, caule_mole_escurecido_base).
sintoma_opcional(excesso_agua, raizes_escuras_podres_cheiro_ruim).
sintoma_opcional(excesso_agua, rega_diaria_frequente).

% Falta de água
sintoma_opcional(falta_agua, bordas_pontas_folhas_secas_marrons).
sintoma_opcional(falta_agua, folhas_caindo).
sintoma_opcional(falta_agua, terra_soltando_bordas_vaso).
sintoma_opcional(falta_agua, solo_secando_rapidamente).



% Deficiência de nitrogênio
sintoma_opcional(deficiencia_nitrogenio, folhas_novas_pequenas_palidas).
sintoma_opcional(deficiencia_nitrogenio, caule_fino_fraco).
sintoma_opcional(deficiencia_nitrogenio, solo_nao_adubado_meses).

% Deficiência de fosfóro
sintoma_opcional(deficiencia_fosforo, atraso_florescimento).
sintoma_opcional(deficiencia_fosforo, folhas_velhas_verde_escuras).
sintoma_opcional(deficiencia_fosforo, solo_nao_adubado_meses).

% Deficiência de potássio
sintoma_opcional(deficiencia_potassio, frutos_mal_formados).
sintoma_opcional(deficiencia_potassio, planta_frequentemente_doente).
sintoma_opcional(deficiencia_potassio, solo_arenoso_pobre).

% Deficiência de cálcio
sintoma_opcional(deficiencia_calcio, frutos_podridao_apical).
sintoma_opcional(deficiencia_calcio, raizes_curtas_escuras).
sintoma_opcional(deficiencia_calcio, solo_muito_acido).

% Deficiência de magnésio
sintoma_opcional(deficiencia_magnesio, reducao_crescimento).
sintoma_opcional(deficiencia_magnesio, folhas_velhas_bronzeadas).
sintoma_opcional(deficiencia_magnesio, solo_muito_acido).
sintoma_opcional(deficiencia_magnesio, solo_muito_arenoso).

% Deficiência de ferro
sintoma_opcional(deficiencia_ferro, solo_calcario_ph_alto).
sintoma_opcional(deficiencia_ferro, crescimento_muito_lento).
sintoma_opcional(deficiencia_ferro, folhas_novas_pequenas).



% Pulgão
sintoma_opcional(pulgao, folhas_enroladas_deformadas_brotos).
sintoma_opcional(pulgao, presenca_formigas_plantas).
sintoma_opcional(pulgao, fumagina_fungo_preto_folhas).
sintoma_opcional(pulgao, amarelamento_localizado).

% Ácaro
sintoma_opcional(acaro, folhas_aspecto_bronzeado_envelhecido).
sintoma_opcional(acaro, clima_quente_seco).
sintoma_opcional(acaro, queda_prematura_folhas).
sintoma_opcional(acaro, plantas_enfraquecidas_sem_viço).

% Cochonilha
sintoma_opcional(cochonilha, fumagina_fungo_preto_folhas).
sintoma_opcional(cochonilha, presenca_formigas_plantas).
sintoma_opcional(cochonilha, ramos_enfraquecidos).
sintoma_opcional(cochonilha, queda_folhas).

% Mosca-branca
sintoma_opcional(mosca_branca, substancia_pegajosa_melada_folhas).
sintoma_opcional(mosca_branca, fumagina_fungo_preto_folhas).
sintoma_opcional(mosca_branca, clima_quente_seco).

% Lesma ou caracol
sintoma_opcional(lesma_ou_caracol, local_umido_sombreado).
sintoma_opcional(lesma_ou_caracol, brotacoes_novas_consumidas).
sintoma_opcional(lesma_ou_caracol, solo_muito_umido).



% Oídio
sintoma_opcional(oidio, folhas_amarelando_sob_po_branco).
sintoma_opcional(oidio, folhas_secas_caindo_apos_po_branco).
sintoma_opcional(oidio, caules_com_manchas_brancas).

% Fumagina
sintoma_opcional(fumagina, presenca_formigas_plantas).
sintoma_opcional(fumagina, substancia_pegajosa_melada_folhas).
sintoma_opcional(fumagina, folhas_com_aspecto_sujo_enegrecido).

% Mancha foliar
sintoma_opcional(mancha_foliar, folhas_caindo_com_manchas).
sintoma_opcional(mancha_foliar, rega_molhando_folhagem).
sintoma_opcional(mancha_foliar, alta_umidade_ventilacao_ruim).

% Mofo cinzento
sintoma_opcional(mofo_cinzento, flores_marrons_moles).
sintoma_opcional(mofo_cinzento, partes_apodrecendo_molengas).
sintoma_opcional(mofo_cinzento, ambiente_fechado_sem_ar).



% Excesso de luminosidade
sintoma_opcional(excesso_luz, planta_sol_direto_mais_6h).
sintoma_opcional(excesso_luz, bordas_folhas_secas_queimadas).
sintoma_opcional(excesso_luz, solo_seca_rapidamente).

% Falta de luminosidade
sintoma_opcional(falta_luz, queda_excessiva_folhas).
sintoma_opcional(falta_luz, planta_local_escuro_sem_janela).
sintoma_opcional(falta_luz, flores_nao_aparecem_botoes_caem).



% Solo inadequado
sintoma_opcional(solo_inadequado, solo_muito_argiloso_ou_arenoso).
sintoma_opcional(solo_inadequado, agua_nao_penetra_ou_escoa_demais).
sintoma_opcional(solo_inadequado, raizes_superficiais_saindo_vaso).


%
% Categoria dos sintomas
% sintoma_categoria(+IdSintoma, +Categoria)
%

% Rega/Solo úmido
sintoma_categoria(solo_encharcado, rega).
sintoma_categoria(solo_seco, rega).
sintoma_categoria(rega_diaria_frequente, rega).
sintoma_categoria(solo_nao_adubado_meses, solo).
sintoma_categoria(solo_muito_acido, solo).
sintoma_categoria(solo_calcario_ph_alto, solo).
sintoma_categoria(solo_arenoso_pobre, solo).
sintoma_categoria(solo_muito_arenoso, solo).
sintoma_categoria(solo_muito_argiloso_ou_arenoso, solo).
sintoma_categoria(agua_nao_penetra_ou_escoa_demais, solo).
sintoma_categoria(ph_medido_fora_faixa_ideal, solo).
sintoma_categoria(solo_muito_umido, solo).
sintoma_categoria(solo_secando_rapidamente, solo).
sintoma_categoria(solo_seca_rapidamente, solo).
 
% Folhas: aparência geral
sintoma_categoria(folhas_amarelas, folha).
sintoma_categoria(folhas_murchas, folha).
sintoma_categoria(folhas_murchas_solo_umido, folha).
sintoma_categoria(bordas_pontas_folhas_secas_marrons, folha).
sintoma_categoria(folhas_caindo, folha).
sintoma_categoria(terra_soltando_bordas_vaso, folha).
 
% Folhas: deficiências nutricionais
sintoma_categoria(amarelamento_folhas_velhas_generalizado, nutricao).
sintoma_categoria(coloracao_roxa_avermelhada_folhas_velhas, nutricao).
sintoma_categoria(necrose_bordas_folhas_velhas, nutricao).
sintoma_categoria(manchas_necroticas_folhas, nutricao).
sintoma_categoria(necrose_pontas_folhas_novas, nutricao).
sintoma_categoria(clorose_internerval_folhas_velhas, nutricao).
sintoma_categoria(clorose_internerval_folhas_novas, nutricao).
sintoma_categoria(nervuras_verdes_tecido_folha_amarelo, nutricao).
sintoma_categoria(folhas_novas_enroladas_deformadas, nutricao).
sintoma_categoria(frutos_podridao_apical, nutricao).
sintoma_categoria(frutos_mal_formados, nutricao).
sintoma_categoria(raizes_curtas_escuras, raiz).
sintoma_categoria(atraso_florescimento, flor).
sintoma_categoria(folhas_velhas_verde_escuras, folha).
sintoma_categoria(folhas_velhas_bronzeadas, folha).
 
% Caule/raiz
sintoma_categoria(caule_mole_escurecido_base, caule).
sintoma_categoria(raizes_escuras_podres_cheiro_ruim, raiz).
sintoma_categoria(caule_fino_fraco, caule).
sintoma_categoria(caule_estiolado_longo_fino_direcao_luz, caule).
sintoma_categoria(ramos_enfraquecidos, caule).
sintoma_categoria(raizes_superficiais_saindo_vaso, raiz).
 
% Crescimento
sintoma_categoria(crescimento_muito_lento, crescimento).
sintoma_categoria(reducao_crescimento, crescimento).
sintoma_categoria(folhas_novas_pequenas_palidas, crescimento).
sintoma_categoria(folhas_novas_pequenas, folha).
sintoma_categoria(planta_frequentemente_doente, geral).
sintoma_categoria(multiplas_deficiencias_sem_melhora_adubo, solo).
 
% Pragas: insetos visíveis
sintoma_categoria(insetos_agrupados_brotos_folhas_novas, praga).
sintoma_categoria(pontilhado_prateado_branco_folhas, praga).
sintoma_categoria(carocinhos_escamas_caule_folhas, praga).
sintoma_categoria(moscas_brancas_voo_face_inferior, praga).
sintoma_categoria(folhas_com_buracos_e_trilha_viscosa, praga).
 
% Pragas: sintomas indiretos
sintoma_categoria(folhas_enroladas_deformadas_brotos, praga).
sintoma_categoria(substancia_pegajosa_melada_folhas, praga).
sintoma_categoria(presenca_formigas_plantas, praga).
sintoma_categoria(fumagina_fungo_preto_folhas, praga).
sintoma_categoria(amarelamento_localizado, folha).
sintoma_categoria(teias_finas_face_inferior_folhas, praga).
sintoma_categoria(folhas_aspecto_bronzeado_envelhecido, folha).
sintoma_categoria(clima_quente_seco, ambiente).
sintoma_categoria(queda_prematura_folhas, folha).
sintoma_categoria(queda_folhas, folha).
sintoma_categoria(plantas_enfraquecidas_sem_viço, geral).
sintoma_categoria(danos_noturnos_maiores_manha, praga).
sintoma_categoria(local_umido_sombreado, ambiente).
sintoma_categoria(brotacoes_novas_consumidas, praga).
sintoma_categoria(insetos_sugadores_presentes, praga).
sintoma_categoria(folhas_com_aspecto_sujo_enegrecido, doenca).
sintoma_categoria(amarelamento_irregular_folhas, folha).
 
% Doenças: fungos
sintoma_categoria(po_branco_pulverulento_folhas, doenca).
sintoma_categoria(camada_negra_fuliginosa_folhas, doenca).
sintoma_categoria(manchas_escuras_aquosas_folhas, doenca).
sintoma_categoria(mofo_cinza_flores_folhas_frutos, doenca).
sintoma_categoria(folhas_amarelando_sob_po_branco, doenca).
sintoma_categoria(folhas_secas_caindo_apos_po_branco, doenca).
sintoma_categoria(caules_com_manchas_brancas, doenca).
sintoma_categoria(alta_umidade_ventilacao_ruim, ambiente).
sintoma_categoria(manchas_com_halo_amarelo, doenca).
sintoma_categoria(folhas_caindo_com_manchas, doenca).
sintoma_categoria(rega_molhando_folhagem, rega).
sintoma_categoria(flores_marrons_moles, flor).
sintoma_categoria(partes_apodrecendo_molengas, doenca).
sintoma_categoria(ambiente_fechado_sem_ar, ambiente).
 
% Luminosidade
sintoma_categoria(manchas_claras_descoradas_expostas_sol, luminosidade).
sintoma_categoria(planta_sol_direto_mais_6h, ambiente).
sintoma_categoria(bordas_folhas_secas_queimadas, folha).
sintoma_categoria(descoloracao_uniforme_lado_sol, luminosidade).
sintoma_categoria(folhas_pequenas_palidas_cor_verde_fraco, folha).
sintoma_categoria(queda_excessiva_folhas, folha).
sintoma_categoria(planta_local_escuro_sem_janela, ambiente).
sintoma_categoria(flores_nao_aparecem_botoes_caem, flor).