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
% Se um dos sintomas obrigatórios estiver ausente, a probabilidade da hipótese torna-se zero e é descartada
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
 
sintoma_obrigatorio(lesma_caracol, folhas_com_buracos_e_trilha_viscosa).
sintoma_obrigatorio(lesma_caracol, danos_noturnos_maiores_manha).

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
