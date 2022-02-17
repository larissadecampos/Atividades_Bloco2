create table tb_classe (
id bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(255),
arma varchar (255),
primary key (id)
);

Insert into tb_classe (nome, habilidade, arma) values ("MagaLoka","Inteligência", "Cajado");
Insert into tb_classe (nome, habilidade, arma) values ("FadaSensata","Agilidade", "Magia");
Insert into tb_classe (nome, habilidade, arma) values ("Elfiko", "Magia", "Livro");
Insert into tb_classe (nome, habilidade, arma) values ("Guerreiro", "Excalibur", "Espada");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
 );
 
 Insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Minseok", 100, 3000, 2800, 1);
 Insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Junmyeon", 100, 2000, 2000, 2);
 Insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("JBakeus", 10, 1000, 1500, 3);
 Insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("JChei", 500, 2300, 3000, 4);
 
select * from tb_personagens;
 
select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa >= 1000 and defesa < 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classe.id;

select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classe.id
where tb_classes.id = 2;