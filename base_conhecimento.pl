% Formato:
%% hipotese(+Id, +Nome, +Probabilidade, +Categoria, +Descrição)
%
% A FAZER: Probabilidade: varia de 0.0 a 1.0
%
% OBS: '+' é um padrão de instanciação, utilizado quando o argumento precisa estar completamente instanciado)

%
% Quantidade de água
%

hipotese(excesso_agua,
	 'Excesso de água',
	 0.90,
	 quantidade_agua,
	 'A planta recebe água em excesso, favorecendo podridões'
).

hipotese(falta_agua,
	 'Falta de água',
	 quantidade_agua,
	 0.90,
	 'A plantia recebe quantidade insuficiente de água.'
).

%
% Nutrição
%

hipotese(deficiencia_nitrogenio,
	'Deficiência de nitrogênio',
	nutricao,
	0.74,
	'O déficit de nitrogênio causa clorose (perda de pigmento) generalizada, inicialmente nas folhas mais velhas. Causa também redução acentuada do crescimento.'
).


hipotese(deficiencia_fosforo,
	'Deficiência de fósforo',
	nutricao,
	0.74,
	'A falta de fósforo causa coloração verde-escura com tons avermelhados/roxos nas folhas mais antigas, além de redução do crescimento'
).

hipotese(deficiencia_potassio,
	'Deficiência de potássio',
	nutricao,
	0.76,
	'A falta de potássio causa clorose e queimadura (necrose) nas bordas de folhas mais velhas.',
).

hipotese(deficiencia_calcio,
	'Deficiência de cálcio',
	nutricao,
	0.78,
	'A falta de cálcio causa necrose nas pontas e bordas de folhas novas. Folhas enroladas também são um sintoma. Pode causar podridão nas pontas de frutos.'
).

hipotese(deficiencia_magnesio,
	'Deficiência de magnésio',
	nutricao,
	0.78,
	'A falta de magnésio causa coloração verde nas nervuras e amarela na área foliar de folhas antigas.'
).

hipotese(deficiencia_ferro,
	'Deficiência de ferro (Clorose Férrica)',
	nutricao,
	0.82,
	'A falta de ferro causa coloração verde nas nervuras e amarela na área foliar de folhas novas. É frequente em solos com pH alto.'
).


%
% Pragas
%

hipotese(pulgao,
	'Infestação de pulgões',
	praga,
	0.93,
	'Pulgões se concentram em brotos e folhas novas. Atraem formigas.'
).

hipotese(cochonilha,
	'Infestação de cochonilhas',
	praga,
	0,92
	'Cochonilhas fixam-se em caules e folhas. Formigas disseminam a praga.'
).

hipotese(acaro,
	'Infestação de ácaros',
	praga,
	0.91,
	'Ácaros são pragas que sugam seiva e causam pontilhados prateados nas folhas. Profileram em clima quente e seco. Ficam localizados na face interior das folhas.'
).

hipotese(mosca_branca,
	'Infestação de mosca-branca',
	praga,
	0,92,
	'Mosca-branca coloniza a face interior das folhas, causando clorose e transmitindo viroses. Épocas mais secas favorecem a multiplicação. Ataca muitas espécies.'
).

hipotese(lesma_ou_caracol,
	'Ataque de lesmas ou caracóis',
	praga,
	0.88,
	'Lesmas e caracóis são pragas de hábito noturno que raspam e comem folhas e brotos. Preferem ambientes úmidos.'
).


%
% Doenças
%

hipotese(oidio,
    'Oídio',
    doenca,
	0.92,
	'Oídio é doença fúngica que forma camada branca pulverulenta (aspecto de farinha) em folhas e caules. Se prolifera em climas quentes e úmidos. Relatado em roseiras, abóboras, ipês e ornamentais.'
).

hipotese(fumagina,
    'Fumagina',
    doenca,
	0.88,
    'Fungo negro que se desenvolve sobre o honeydew excretado por pulgões, cochonilhas ou mosca-branca. Reduz fotossíntese e respiração. Formigas disseminam o fungo.'
).

hipotese(mancha_foliar,
    'Manchas Foliares (Fungos/Bactérias)',
    doenca,
	0.78,
    'Manchas escuras, aquosas ou com halo amarelo indicam fungos ou bactérias que destroem o tecido foliar. Favorecidas por alta umidade e rega por cima (molhando folhagem).'
).

hipotese(mofo_cinzento,
    'Mofo Cinzento',
    doenca,
	0.88,
    'Fungo que causa podridão acinzentada em flores, frutos e folhas. Favorecido por excesso de umidade e ventilação deficiente em ambientes fechados.'
).

%
% Luminosidade
%

hipotese(excesso_luz,
    'Queimadura por Excesso de Luz Solar',
    luminosidade,
	0.85,
    'Exposição excessiva ao sol direto destrói cloroplastos, causando manchas claras, esbranquiçadas ou amarelas no lado da folha exposto. Mais comum em plantas de sombra expostas ao sol.'
).
 
hipotese(falta_luz,
    'Falta de Luminosidade',
    luminosidade,
	0.85,
    'Sem luz suficiente, a planta não realiza fotossíntese adequada. O caule cresce estiolado (alongado e fino) em direção à luz, e as folhas ficam pálidas e pequenas'
).


%
% Solo
%

hipotese(solo_inadequado,
    'Solo Inadequado / pH Incorreto',
    solo,
	0.70,
    'pH incorreto bloqueia a absorção de nutrientes mesmo com adubação.',
).


%
% Recomendação de tratamento para cada hipótese
% recomendacao(+HipoteseId, +Ordem, +Descrição)
%

recomendacao(excesso_agua, 1, 'Reduza imediatamente a frequência de rega.').
recomendacao(excesso_agua, 2, 'Verifique se há drenagem adequada no vaso.').
recomendacao(excesso_agua, 3, 'Remova a planta do substrato e inspecione as raízes.').
recomendacao(excesso_agua, 4, 'Se houver podridão radicular, corte as raízes escuras e moles com tesoura esterilizada.').
recomendacao(excesso_agua, 5, 'Repote em substrato fresco com boa drenagem.').
 
recomendacao(falta_agua, 1, 'Aumente imediatamente a frequência de rega.').
recomendacao(falta_agua, 2, 'Mergulhe o vaso inteiro em água por 10 minutos para reidratar o substrato completamente.').
recomendacao(falta_agua, 3, 'Após reidratação, deixe escorrer bem antes de retornar ao lugar.').
recomendacao(falta_agua, 4, 'Monitore o solo diariamente até a planta se recuperar.').
 
recomendacao(deficiencia_nitrogenio, 1, 'Aplique adubo nitrogenado foliar para efeito rápido (ureia a 0,5%).').
recomendacao(deficiencia_nitrogenio, 2, 'Repita a adubação a cada 15 dias durante a fase de crescimento.').
recomendacao(deficiencia_nitrogenio, 3, 'Certifique-se de que o pH está entre 6,0 e 7,0 para boa absorção.').
 
recomendacao(deficiencia_fosforo, 1, 'Aplique superfosfato simples ou fosfato natural ao solo.').
recomendacao(deficiencia_fosforo, 2, 'Misture bem o fósforo ao substrato, pois ele tem baixa mobilidade no solo.').
recomendacao(deficiencia_fosforo, 3, 'Verifique e corrija o pH para a faixa 6,0–7,0, que maximiza a absorção de fósforo.').
recomendacao(deficiencia_fosforo, 4, 'Evite excesso de cálcio ou ferro no solo, que bloqueiam o fósforo.').
 
recomendacao(deficiencia_potassio, 1, 'Aplique cloreto de potássio ou sulfato de potássio ao solo.').
recomendacao(deficiencia_potassio, 2, 'Em solos arenosos, fracione as doses para evitar lixiviação.').
 
recomendacao(deficiencia_calcio, 1, 'Aplique calcário dolomítico ao solo para repor cálcio e magnésio simultaneamente.').
recomendacao(deficiencia_calcio, 2, 'Para ação mais rápida, use cloreto de cálcio em aplicação foliar (0,4%).').
recomendacao(deficiencia_calcio, 3, 'Mantenha o pH entre 6,0 e 7,0 para absorção adequada.').
recomendacao(deficiencia_calcio, 4, 'Garanta rega regular: Cálcio é absorvido pelo fluxo de água nas raízes.').
recomendacao(deficiencia_calcio, 5, 'Evite excesso de potássio ou magnésio, que competem com o cálcio.').
 
recomendacao(deficiencia_magnesio, 1, 'Aplique sulfato de magnésio (sal de Epsom) diluído: 1–2 g/L na rega.').
recomendacao(deficiencia_magnesio, 2, 'Aplique também via foliar para efeito mais rápido (5 g/L de sulfato de magnésio).').
recomendacao(deficiencia_magnesio, 3, 'Corrija o pH se estiver fora de 5,5–6,5, pois pH baixo reduz absorção de magnésio.').
 
recomendacao(deficiencia_ferro, 1, 'Aplique quelato de ferro foliar (EDDHA ou DTPA) conforme dosagem do produto.').
recomendacao(deficiencia_ferro, 2, 'O quelato de ferro é mais eficiente que sulfato ferroso em solos com pH alto.').
recomendacao(deficiencia_ferro, 3, 'Corrija o pH para 5,5–6,5 com enxofre agrícola se o solo estiver alcalino.').
recomendacao(deficiencia_ferro, 4, 'Evite irrigação excessiva com água calcária, que eleva o pH e bloqueia o Fe.').
 
recomendacao(pulgao, 1, 'Aplique jatos de água fortes para remover colônias, especialmente nos brotos.').
recomendacao(pulgao, 2, 'Aplique óleo de nim (azadiractina) ou sabão potássico a cada 7 dias.').
recomendacao(pulgao, 3, 'Controle as formigas que protegem os pulgões (elas os disseminam).').
recomendacao(pulgao, 4, 'Incentive inimigos naturais: joaninhas e crisopídeos são predadores eficazes.').
recomendacao(pulgao, 5, 'Em infestações severas, use inseticida sistêmico como imidacloprido.').
 
recomendacao(acaro, 1, 'Aumente a umidade ao redor da planta.').
recomendacao(acaro, 2, 'Aplique acaricida específico ou óleo de nim na face inferior das folhas.').
recomendacao(acaro, 3, 'Repita a aplicação em 7 dias para eliminar os ovos que eclodirem.').
recomendacao(acaro, 4, 'Isole a planta infestada para evitar disseminação para outras plantas.').
recomendacao(acaro, 5, 'Em clima quente e seco, nebulize as folhas diariamente como prevenção.').
 
recomendacao(cochonilha, 1, 'Remova manualmente as cochonilhas visíveis com cotonete embebido em álcool.').
recomendacao(cochonilha, 2, 'Aplique óleo mineral emulsionável (1–2%) para sufocar os insetos.').
recomendacao(cochonilha, 3, 'Em infestações severas, use inseticida sistêmico.').
recomendacao(cochonilha, 4, 'Controle as formigas associadas, que disseminam a praga.').
recomendacao(cochonilha, 5, 'Repita o tratamento semanalmente por 3–4 semanas.').
 
recomendacao(mosca_branca, 1, 'Instale armadilhas amarelas adesivas para monitoramento e captura.').
recomendacao(mosca_branca, 2, 'Aplique sabão potássico na face inferior das folhas (onde os ovos ficam).').
recomendacao(mosca_branca, 3, 'Use inseticida sistêmico (neonicotinoides) em infestações estabelecidas.').
recomendacao(mosca_branca, 4, 'Introduza o parasitoide Encarsia spp. como controle biológico.').
recomendacao(mosca_branca, 5, 'Evite excesso de nitrogênio, que torna as folhas mais atrativas.').
 
recomendacao(lesma_ou_caracol, 1, 'Faça coleta manual ao entardecer, quando os animais estão ativos.').
recomendacao(lesma_ou_caracol, 2, 'Instale armadilhas com cerveja em recipientes rasos enterrados no solo.').
recomendacao(lesma_ou_caracol, 3, 'Crie barreiras de cal, cinza ou areia grossa ao redor das plantas.').
recomendacao(lesma_ou_caracol, 4, 'Aplique moluscicida com fosfato férrico (menos tóxico ao ambiente que o metaldeído).').
recomendacao(lesma_ou_caracol, 5, 'Reduza o excesso de umidade e remova refúgios como folhas mortas e pedras.').
 
recomendacao(oidio, 1, 'Melhore a circulação de ar ao redor da planta imediatamente.').
recomendacao(oidio, 2, 'Remova e descarte as partes mais afetadas (não composte).').
recomendacao(oidio, 3, 'Aplique fungicida à base de enxofre molhável conforme bula.').
recomendacao(oidio, 4, 'Evite molhar as folhas ao regar.').
 
recomendacao(fumagina, 1, 'Controle primeiro as pragas causadoras (pulgões, cochonilhas ou mosca-branca).').
recomendacao(fumagina, 2, 'Lave as folhas afetadas com solução de sabão neutro diluído.').
recomendacao(fumagina, 3, 'Após a limpeza, aplique fungicida cúprico (calda bordalesa).').
recomendacao(fumagina, 4, 'Controle as formigas que disseminam as pragas produtoras.').
recomendacao(fumagina, 5, 'A fumagina some naturalmente após o controle dos insetos sugadores.').
 
recomendacao(mancha_foliar, 1, 'Remova e descarte imediatamente todas as folhas com manchas.').
recomendacao(mancha_foliar, 2, 'Evite molhar a folhagem ao regar.').
recomendacao(mancha_foliar, 3, 'Aplique fungicida cúprico (calda bordalesa) ou bactericida conforme o agente.').
recomendacao(mancha_foliar, 4, 'Melhore a circulação de ar e reduza a umidade ao redor da planta.').
recomendacao(mancha_foliar, 5, 'Esterilize tesouras de poda com álcool para evitar transmissão mecânica.').
 
recomendacao(mofo_cinzento, 1, 'Remova imediatamente todas as partes afetadas.').
recomendacao(mofo_cinzento, 2, 'Melhore a ventilação do ambiente urgentemente.').
recomendacao(mofo_cinzento, 3, 'Reduza a umidade: evite nebulização e molhar as folhas.').
recomendacao(mofo_cinzento, 4, 'Aplique fungicida sistêmico (iprodione ou tiofanato-metílico) conforme bula.').
recomendacao(mofo_cinzento, 5, 'Espaçe mais as plantas para aumentar a circulação de ar entre elas.').
 
recomendacao(excesso_luz, 1, 'Mova a planta imediatamente para local com luz indireta ou meia-sombra.').
recomendacao(excesso_luz, 2, 'Se não for possível mover, instale sombrite (50%) para filtrar a luz.').
recomendacao(excesso_luz, 3, 'Mantenha boa hidratação durante a recuperação.').
recomendacao(excesso_luz, 4, 'Não remova as folhas queimadas imediatamente; elas protegem o tecido saudável.').
recomendacao(excesso_luz, 5, 'Reintroduza a luz solar gradualmente quando a planta se recuperar.').
 
recomendacao(falta_luz, 1, 'Mova a planta para o local mais iluminado disponível, próximo a janelas.').
recomendacao(falta_luz, 2, 'Gire o vaso periodicamente para que todos os lados recebam luz igual.').
recomendacao(falta_luz, 3, 'Para ambientes sem luz natural, instale lâmpadas de crescimento com espectro completo.').
recomendacao(falta_luz, 4, 'Mantenha as lâmpadas a 20–30 cm da planta por 12–16 horas por dia.').
recomendacao(falta_luz, 5, 'Limpe as folhas com pano úmido para maximizar a absorção de luz.').
 
recomendacao(solo_inadequado, 1, 'Meça o pH do solo com kit de teste ou pHmetro.').
recomendacao(solo_inadequado, 2, 'Para solo ácido (pH < 5,5): aplique calcário dolomítico e aguarde 30 dias.').
recomendacao(solo_inadequado, 3, 'Para solo alcalino (pH > 7,0): aplique enxofre agrícola granulado.').
recomendacao(solo_inadequado, 4, 'Se o problema persistir, considere a troca completa do substrato.').
recomendacao(solo_inadequado, 5, 'Use substrato específico para o tipo de planta.').


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
