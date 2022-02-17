create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categoria(
id bigint auto_increment,
tamanho varchar(255) ,
borda boolean,
tipo varchar (12),
primary key(id)
);
create table tb_pizza(
pizzaID bigint auto_increment,
nome varchar(20),
    queijo boolean,
    calabresa boolean,
    portuguesa boolean,
    catupiry boolean,
    valor decimal(5,2),
    categoria_id bigint not null,
    
    primary key(pizzaID),
    foreign key(categoria_id) references tb_categoria(id)
);
insert into tb_categoria(tamanho, tipo, borda)
	values("Grande"," pizza", false);
insert into tb_categoria(tamanho, tipo, borda) 
	values("Brotinho","pizza", true);
insert into tb_categoria(tamanho, tipo, borda) 
	values("Grande", "calzone", true);
insert into tb_categoria(tamanho, tipo, borda) 
	values("Brotinho", "pizza", false);
insert into tb_categoria(tamanho, tipo, borda) 
	values("Grande", "calzone", true);

insert into tb_pizza(queijo, calabresa, portuguesa, catupity, valor, categoria_id)
values ("Queijo", true, false, false, false, false, 45.00, 1);
insert into tb_pizza(nome,queijo,calabresa,portuguesa,catupiry,valor,categoria_id) 
	values("Calabresa", false, true, false, false,25.00, 2);
insert into tb_pizza(nome,queijo,calabresa,portuguesa,catupiry,valor,categoria_id) 
	values("Catupiry", false, false, false, true, 55.00, 1);
insert into tb_pizza(nome,queijo,calabresa,portuguesa,catupiry,valor,categoria_id) 
	values("Portuguesa",false,false, true,false,50.00,3);
insert into tb_pizza(nome,queijo,calabresa,portuguesa,catupiry,valor,categoria_id) 
	values("Mussarela", true, false, false, false, 35.00, 1);

select * from tb_pizza where valor>45.00;
select * from tb_pizza where valor>29 and valor<60;
select * from tb_pizza where nome like "%c%";
select * from tb_pizza
inner join tb_categoria on tb_categoria.id=tb_pizza.categoria_id; #Mostra a intersecção das tabelas
select * from tb_pizza
inner join tb_categoria on tb_categoria.id=tb_pizza.categoria_id
 where tb_pizza.catupiry=true;



