select * from Animais;
select * from Animais where peso <50;
select * from Animais where nasc between '2015-02-01' and '2015-12-01';
select * from Animais where cor = 'branco' and peso < 20;
select nome, cor, peso from Animais where nome like 'B%';
select nome, cor, peso from Animais where cor in ('vermelho', 'amarelo', 'marrom', 'laranja');
select nome, cor, nasc, peso from Animais order by nasc desc;
select * from Animais where nome like 'C%' and cor not in ('branco');
select * from Animais where nome like 'ba%';
select * from Animais where peso between 14.7 and 28.1;
select * from Animais where peso < 30 and cor = 'amarelo' or cor = 'roxo' and nasc >= '2012-01-01';