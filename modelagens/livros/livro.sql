use infoddb;
create table tb_autor (
id_autor 			 int auto_increment primary key,
nm_autor			 varchar(50) unique,
vl_avaliacao 		 decimal(15,2),
dt_nascimento 		 date,
ds_cidade_nascimento varchar(100),
ds_pais_nascimento	 varchar(100)
);

create table tb_livro (
id_livro		int primary key auto_increment,
nm_livro		varchar(80) unique,
ds_genero		varchar(80),
vl_avaliacao	decimal(15,2),
bt_disponivel	boolean,
dt_lancamento	date,
vl_preco		decimal(15,2),
nr_paginas		int,
ds_editora		varchar(80),
fk_id_autor		int,
foreign key (fk_id_autor) references tb_autor(id_autor)
);

select * from tb_autor;
select* from tb_livro;
drop table tb_autor;
drop table tb_livro;
desc tb_autor;
desc tb_livro;

INSERT INTO tb_autor (nm_autor, vl_avaliacao, dt_nascimento, ds_cidade_nascimento, ds_pais_nascimento)
VALUES ("José", 7, "2020-04-22", "São Paulo", "Brasil");

INSERT INTO tb_autor (nm_autor, vl_avaliacao, dt_nascimento, ds_cidade_nascimento, ds_pais_nascimento)
VALUES ("Maria", 8, "1990-12-15", "Rio de Janeiro", "Brasil");

INSERT INTO tb_autor (nm_autor, vl_avaliacao, dt_nascimento, ds_cidade_nascimento, ds_pais_nascimento)
VALUES ("John Smith", 6.5, "1985-06-30", "Nova York", "Estados Unidos");

INSERT INTO tb_autor (nm_autor, vl_avaliacao, dt_nascimento, ds_cidade_nascimento, ds_pais_nascimento)
VALUES ("Isabella Silva", 9, "1978-03-10", "São Paulo", "Brasil");

INSERT INTO tb_autor (nm_autor, vl_avaliacao, dt_nascimento, ds_cidade_nascimento, ds_pais_nascimento)
VALUES ("Mohammed Ali", 7.2, "1992-09-08", "Cairo", "Egito");

INSERT INTO tb_autor (nm_autor, vl_avaliacao, dt_nascimento, ds_cidade_nascimento, ds_pais_nascimento)
VALUES ("Sophie Martin", 8.7, "1983-07-25", "Paris", "França");

INSERT INTO tb_autor (nm_autor, vl_avaliacao, dt_nascimento, ds_cidade_nascimento, ds_pais_nascimento)
VALUES ("Liu Wei", 6.8, "1995-11-02", "Pequim", "China");

INSERT INTO tb_autor (nm_autor, vl_avaliacao, dt_nascimento, ds_cidade_nascimento, ds_pais_nascimento)
VALUES ("Ana Torres", 7.9, "1989-05-18", "Madrid", "Espanha");

INSERT INTO tb_autor (nm_autor, vl_avaliacao, dt_nascimento, ds_cidade_nascimento, ds_pais_nascimento)
VALUES ("Ravi Patel", 8.5, "1993-02-28", "Mumbai", "Índia");

INSERT INTO tb_autor (nm_autor, vl_avaliacao, dt_nascimento, ds_cidade_nascimento, ds_pais_nascimento)
VALUES ("Olga Ivanova", 6.3, "1987-09-12", "Moscou", "Rússia");

INSERT INTO tb_autor (nm_autor, vl_avaliacao, dt_nascimento, ds_cidade_nascimento, ds_pais_nascimento)
VALUES ("Jeferson Soares", 3.3, "1920-10-12", "Minas Gerais", "Brasil");


INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
values ("A Garota do Lago", "Terror", 2.0, false, "1990-03-21", 44.90, 200, "Editora Paulus", 11);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
values ("O Código da Vinci", "Mistério", 7, true, "2000-06-11", 34.90, 500, "Ventus", 2);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("A Culpa é das Estrelas", "Romance", 8, true, "2012-01-10", 29.99, 313, "Editora XYZ", 4);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("Harry Potter e a Pedra Filosofal", "Fantasia", 9, true, "1997-06-26", 39.90, 332, "Editora ABC", 3);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("1984", "Ficção Distópica", 8.5, true, "1949-06-08", 24.50, 328, "Editora Livrus", 5);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("Orgulho e Preconceito", "Romance Clássico", 9.2, true, "1813-01-28", 28.75, 432, "Editora Magna", 7);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("A Revolução dos Bichos", "Sátira Política", 8, true, "1945-08-17", 19.99, 176, "Editora Estrela", 8);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("Dom Quixote", "Romance Clássico", 9.5, true, "1605-01-16", 42.90, 992, "Editora Sapiens", 6);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("As Crônicas de Nárnia", "Fantasia", 8.7, true, "1950-10-16", 31.50, 768, "Editora Imaginário", 10);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("A Menina que Roubava Livros", "Drama", 8.3, true, "2005-01-01", 26.99, 552, "Editora Leitura", 9);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("É assim que Começa", "Comédia", 1.3, false, "2020-08-25", 56.99, 552, "Editora Linus", 11);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("A Divina Comédia", "Aventura", 9.0, true, "2020-09-11", 72.50, 720, "Editora Sextante", 10);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("Dracula", "Terror", 5.2, true, "1902-08-12", 40.50, 154, "Editora Intrínseca", 2);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("Inferno", "Romance", 9.2, true, "2012-03-30", 70.50, 194, "Editora Intrínseca", 6);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("Purgatório", "Romance", 6.9, true, "1978-03-10", 71.00, 124, "Editora Intrínseca", 4);

INSERT INTO tb_livro (nm_livro, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, vl_preco, nr_paginas, ds_editora, fk_id_autor)
VALUES ("Paraíso", "Romance", 10, true, "2020-12-04", 24.99, 50, "Editora Sextante", 11);


-- 1)
	select *
	  from tb_livro
inner join tb_autor on tb_autor.id_autor = tb_livro.fk_id_autor
	 where tb_livro.vl_avaliacao > 8;
     
-- 2)
	select nm_autor, nm_livro, tb_livro.vl_avaliacao AS "vl_livro_avaliacao"
	  from tb_livro
inner join tb_autor on tb_autor.id_autor = tb_livro.fk_id_autor
	 where nm_autor like '%a%'
	   and nm_autor like '%o%'
       
       and tb_autor.ds_pais_nascimento like '%Brasil%'
       and tb_livro.vl_avaliacao < 8
   order by nm_autor desc;
  
-- 3)
	select *
      from tb_livro
inner join tb_autor on tb_autor.id_autor = tb_livro.fk_id_autor
	 where ds_genero like 'Comédia' or ds_genero like 'Aventura'
       and vl_preco between 50 and 100
       and ds_editora = 'Editora Sextante'
  order by ds_genero;
  
-- 4)
	select tb_livro.*, tb_autor.nm_autor
      from tb_livro
inner join tb_autor on tb_autor.id_autor = tb_livro.fk_id_autor
	 where nm_livro like '%o'
	   and nr_paginas between 100 and 200
       and ds_editora = "Editora Intrínseca"
  order by nr_paginas;
  
-- 5)
	select *
      from tb_livro
	 where dayofweek(dt_lancamento) = 4;
     
-- 6)
	select tb_livro.nm_livro, tb_autor.nm_autor, dt_lancamento, dt_nascimento
      from tb_livro
inner join tb_autor on tb_autor.id_autor = tb_livro.fk_id_autor
     where tb_livro.dt_lancamento = tb_autor.dt_nascimento;	