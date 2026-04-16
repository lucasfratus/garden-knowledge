% Formato:
%% hipotese(+Id, +Nome, +Probabilidade, +Categoria, +Descrição, +Recomendação)
%
% Probabilidade: varia de 0.0 a 1.0
%
% OBS: '+' é um padrão de instanciação, utilizado quando o argumento precisa estar completamente instanciado)


% Quantidade de água

hipotese(excesso_agua,
	 'Excesso de água',
	 quantidade_agua,
	 'A planta recebe água em excesso.',
	 'Reduza a frequência da regagem ou a quantidade de água utilizada. Caso a planta esteja em um vazo, verifique as saídas de água.'
).

hipotese(falta_agua,
	 'Falta de água',
	 quantidade_agua,
	 'A plantia recebe quantidade insuficiente de água.',
	 'Aumente a frequência da regagem ou a quantidade de água utilizada.'
).


% Nutrição

hipotese(deficiencia_nitrogenio,
	'Deficiência de Nitrogênio',
	nutricao,
	'O déficit de nitrogênio causa clorose (perda de pigmento) generalizada, inicialmente nas folhas mais volhas.',
	'Aplique adubo nitrogenado ou adubo orgânico. Repita a cada 15 dias.'
).


hipotese(deficiencia_fosforo,
	'Deficiência de Fósforo',
	nutricao,
	'A falta de fósforo causa coloração verde-escura com tons avermelhados ou roxos nas folhas mais antigas, além de redução do crescimento',
	'Aplique superfosfato simples ou fosfato natural. Certifique-se de que o pH do solo está entre 6,0 e 7,0 para garantir uma melhor absorção.',
).

hipotese(deficiencia_potassio,
	'Deficiência de Potássio',
	nutricao,
	'A falta de potássio causa clorose e queimadura (necrose) nas bordas de folhas mais velhas.',
       'Aplique cloreto de potássio ou sulfato de potássio.'
).

hipotese(deficiencia_calcio,
	'Deficiência de Cálcio',
	nutricao,
	'A falta de cálcio causa necrose nas pontas e bordas de folhas novas. Folhas enroladas também são um sintoma. Pode causar podridão nas pontas de frutos.'
	'Aplique calcário dolomítico ou cloreto de cálcio foliar. Mantenha o pH do solo entre 6,0 e 7,0 para garantir a absorção adequada.'
).

hipotese(deficiencia_magnesio,
	'Deficiência de Magnésio',
	nutricao,
	'A falta de magnésio causa coloração verde nas nervuras e amarela na área foliar de folhas antigas.',
	'Aplique sulfato de magnésio.'
).

hipotese(deficiencia_ferro,
	'Deficiência de Ferro (Clorose Férrica)',
	nutricao,
	'A falta de ferro causa coloração verde nas nervuras e amarela na área foliar de folhas novas. É frequente em solos com pH alto.'
	'Aplique quelato de ferro foliar. Corrija o pH do solo para 5,5-6,5 com enxofre agrícola, se necessário.'
).


