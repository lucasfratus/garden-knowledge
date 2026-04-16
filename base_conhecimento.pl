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
