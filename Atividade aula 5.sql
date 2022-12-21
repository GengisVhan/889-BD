CREATE TABLE public.filmes (
	id varchar NOT NULL,
	nome varchar NOT NULL,
	categoria varchar NOT NULL,
	duração varchar NOT NULL,
	lançamento varchar NOT NULL,
	CONSTRAINT filmes_pk PRIMARY KEY (id)
);

INSERT INTO public.filmes
(id, nome, categoria, duração, lançamento)
VALUES('1', 'Como eu era Antes de Você', 'drama', '110', '2016-06-16');
INSERT INTO public.filmes
(id, nome, categoria, duração, lançamento)
VALUES('2', 'Para Sempre', 'romance', '104', '2012-06-07');
INSERT INTO public.filmes
(id, nome, categoria, duração, lançamento)
VALUES('3', 'Arremessando Alto', 'drama', '117', '2022-06-03');
INSERT INTO public.filmes
(id, nome, categoria, duração, lançamento)
VALUES('4', 'King Richard: Criando Campeãs', 'drama', '144', '2021-12-02');
INSERT INTO public.filmes
(id, nome, categoria, duração, lançamento)
VALUES('5', 'No Ritmo do Coração', 'drama', '111', '2021-09-23');

INSERT INTO public.filmes (id,nome,categoria,duração,lançamento)
	VALUES ('6','O Enigma de Outro Mundo','terror','108','1983-02-03');

DELETE FROM public.filmes
	WHERE id='6';

ALTER TABLE public.filmes ADD verificado bool NULL;

UPDATE public.filmes
	SET verificado=true
	WHERE categoria='drama';

SELECT id, nome, categoria
FROM public.filmes
WHERE id='1' OR id='2';


SELECT nome
FROM public.filmes
WHERE nome!='Arremessando Alto';

SELECT id, nome, categoria, duração, lançamento, verificado
FROM public.filmes
WHERE id='2';


