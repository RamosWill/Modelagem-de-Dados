create database infoddb;

use infoddb;


create table tb_diretor (
    id_diretor    INT PRIMARY KEY auto_increment,
    nm_diretor    varchar(50),
    vl_avaliacao    decimal(15,2),
    dt_nascimento date
);

create table tb_filme (
    id_filme    int primary key auto_increment,
    nm_filme    varchar(50),
    ds_genero     varchar(50),
    vl_avaliacao decimal (3,1),
    bt_disponivel    bool,
    dt_lancamento    date,
    id_diretor    int,
    foreign key (id_diretor) references tb_diretor (id_diretor)
);



insert into tb_diretor (nm_diretor, vl_avaliacao, dt_nascimento)
    values    ("Waldir", 10, "1920-02-22");

insert into tb_diretor (nm_diretor, vl_avaliacao, dt_nascimento)
    values ("Quentin Tarantino", 9, "2010-11-03");

insert into tb_diretor (nm_diretor, vl_avaliacao, dt_nascimento)
values ("Roberto Carlos", 3, "2001-04-30");

insert into tb_diretor (nm_diretor, vl_avaliacao, dt_nascimento)
values    ("Chris Bumstead", 7, "1989-12-03");

insert into tb_diretor (nm_diretor, vl_avaliacao, dt_nascimento)
values ("Woody Allen", 4, "2016-11-03");

insert into tb_diretor (nm_diretor, vl_avaliacao, dt_nascimento)
values ("Matt Reeves", 8.4, "1919-11-22");

insert into tb_diretor (nm_diretor, vl_avaliacao, dt_nascimento)
values ("Joseph Cujoh", 10.0, "1969-02-22");

insert into tb_filme (nm_filme, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, id_diretor)
values ("Homem de Ferro", "Ação", 10, true, "2006-01-23", 2);

insert into tb_filme (nm_filme, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, id_diretor)
values ("Thor Ragnarok", "Romance", 8.2, true, "1094-02-12", 4);

insert into tb_filme (nm_filme, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, id_diretor)
values ("Rambo", "Comédia", 7, true, "1903-04-10", 5);

insert into tb_filme (nm_filme, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, id_diretor)
values ("Matrix", "Aventura", 5.7, true, "1978-04-01", 6);

insert into tb_filme (nm_filme, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, id_diretor)
values ("John Wick 4: Baba Yaga", "Luta", 4.2, false, "2022-04-12", 1);

insert into tb_filme (nm_filme, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, id_diretor)
values ("Moby Dick", "Romance", 8.9, false, "1999-03-21", 5);

insert into tb_filme (nm_filme, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, id_diretor)
values ("Homem-Aranha: Longe de Casa", "Ação", 4.2, false, "2016-02-03", 3);

insert into tb_filme (nm_filme, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, id_diretor)
values ("O Código da Vinci", "Mistério", 9.0, true, "2007-03-22", 7);

insert into tb_filme (nm_filme, ds_genero, vl_avaliacao, bt_disponivel, dt_lancamento, id_diretor)
values ("A Raptura", "Mistério", 2.0, false, "2022-11-29", 7);

drop table tb_filme;
drop table tb_diretor;

SELECT * FROM tb_diretor;
select * from tb_filme;



/* 1) */
select tb_diretor.nm_diretor,
        tb_diretor.id_diretor,
        tb_filme.nm_filme
From tb_FILME
inner join tb_diretor on tb_diretor.id_diretor = tb_filme.id_diretor
order by nm_diretor;

/* 2) */
select tb_diretor.nm_diretor,
       tb_diretor.id_diretor,
       tb_diretor.vl_avaliacao,
       tb_filme.nm_filme

       from tb_filme

       inner join tb_diretor on tb_diretor.id_diretor = tb_filme.id_diretor

    where tb_diretor.vl_avaliacao > 1;

/* 3) */
select *
from tb_filme
inner join tb_diretor on tb_diretor.id_diretor = tb_filme.id_diretor
where nm_filme like '%a%' and tb_filme.vl_avaliacao > 8
order by nm_filme desc;

/* 4) */
select tb_filme.*, tb_diretor.nm_diretor
from tb_filme
inner join tb_diretor on tb_diretor.id_diretor = tb_filme.id_diretor
where tb_filme.ds_genero like '%acao%' 
   or tb_filme.ds_genero like '%aventura%' 
   or tb_filme.ds_genero like '%comedia%';


/* 5) */
select id_filme,
	   nm_filme,
       tb_diretor.id_diretor,
       nm_diretor,
       dt_lancamento
 from tb_filme
 inner join tb_diretor on tb_diretor.id_diretor = tb_filme.id_diretor
 where tb_filme.dt_lancamento > "2010-01-01" and tb_filme.dt_lancamento < "2020-12-30"
 order by dt_lancamento desc;
 
 /* 6) */
 select *
	from tb_filme
    inner join tb_diretor on tb_diretor.id_diretor = tb_filme.id_diretor
    where tb_diretor.nm_diretor	like '%a%';
    

/* 7) */
select datediff(curdate(), dt_lancamento), nm_filme
from tb_filme;


/* 8) */
	select *
	  from tb_filme
inner join tb_diretor on tb_diretor.id_diretor = tb_filme.id_diretor
	 where month(dt_lancamento) in (4,5,6);
     
/* 9) */
	select *
      from tb_filme
inner join tb_diretor on tb_diretor.id_diretor = tb_filme.id_diretor
	where nm_filme like 'a%'
    and year(dt_lancamento) % 2 = 0
    and year(dt_nascimento) between '1960' and '1969';
	
