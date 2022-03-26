create database livraria_;

use livraria_;

create table documento(
	codigo int not null auto_increment,
	documento varchar(14) unique,
	primary key (codigo)
);

create table cliente(
    codigo int,
    nome varchar(150),
    telefone varchar(11),
    rua varchar(45),
    bairro varchar(45),
    numero varchar (10),
    documento_codigo int unique,
    foreign key (documento_codigo) references 
    documento (codigo) on delete cascade,
    primary key (codigo, documento_codigo)
);

create table editora(
    codigo int primary key not null,
    nome varchar(150),
    rua varchar(45),
    bairro varchar(45),
    numero varchar(10),
    telefone varchar(11),
    gerente varchar(45)
);

create table livro(
    codigo int not null auto_increment,
    isbn int not null unique,
    quantidade_estoque int,
    nome varchar(150),
    assunto varchar(45),
    autor varchar(45),
    valor decimal(8,2),
    codigoeditora int not null,
    foreign key (codigoeditora) references
    editora (codigo) on delete cascade,
    primary key(codigo, isbn)
);

create table venda(
    codigo_venda int not null auto_increment,
    codigocliente int not null,
    foreign key (codigocliente) references
    cliente (codigo) on delete cascade,
    codigo_livro int not null,
    foreign key (codigo_livro) references
	livro (codigo) on delete cascade,
    datacompra date,
    primary key (codigo_venda)
    );
create table if not exists compra(
codigo_compra int not null auto_increment,
codigo_livro int not null,
foreign key(codigo_livro)
references livro (codigo),
valor decimal(8,2),
quantidade int not null,
datacompra date,
primary key (codigo_compra)
);


select * from documento;
select * from cliente;
select * from livro;
select * from venda;
select * from editora;

insert into documento(documento) values("46939127860");
insert into documento(documento) values("12547896000162");
insert into documento(documento) values("18762578954");
insert into documento(documento) values("18946832000160");
insert into documento(documento) values("35971240230");
insert into documento(documento) values("15789441000154");
insert into documento(documento) values("58947532013");
insert into documento(documento) values("45812067000150");
insert into documento(documento) values("14594886843");
insert into documento(documento) values("56589352015");
insert into documento(documento) values("65896211512");

insert into cliente(codigo, nome, telefone, rua, bairro, numero, documento_codigo)
values(1,"Isralis","18947562105","Rua Bonifacio","Centro","145", 1);
insert into cliente(codigo, nome, telefone, rua, bairro, numero, documento_codigo)
values(2,"Brunosis","15478932507","Av Jose cordeiro","Centro","789", 2);
insert into cliente(codigo, nome, telefone, rua, bairro, numero, documento_codigo)
values(3,"Henriquosis","18962578621","Av Gordon","Vila madalena","470", 3);
insert into cliente(codigo, nome, telefone, rua, bairro, numero, documento_codigo)
values(4,"Joãonosis","15021476089","Rua Jose soares","Bairro Novo","110", 4);
insert into cliente(codigo, nome, telefone, rua, bairro, numero, documento_codigo)
values(5,"Jubiscleudo","14978562105","Rua Jose soares","Bairro Novo","747", 5);
insert into cliente(codigo, nome, telefone, rua, bairro, numero, documento_codigo)
values(6,"Bosnisfacio","11326987410","Av Saulo","Vila velha","520", 6);
insert into cliente(codigo, nome, telefone, rua, bairro, numero, documento_codigo)
values(7,"Brezitrizozes","47974582360","Rua Barbarossa","Vila velha","578", 7);
insert into cliente(codigo, nome, telefone, rua, bairro, numero, documento_codigo)
values(8,"Zoraide","15967825469","Av jorge","Centro","15-A", 8);
insert into cliente(codigo, nome, telefone, rua, bairro, numero, documento_codigo)
values(9,"Abigail","15985689201","Rua louracio","Exumero","258", 9);
insert into cliente(codigo, nome, telefone, rua, bairro, numero, documento_codigo)
values(10,"Asnerson","14893257920","Rua jaaj","Carcumiu","891", 10);
insert into cliente(codigo, nome, telefone, rua, bairro, numero, documento_codigo)
values(11,"Artoztca","18931862154","Rua Uaaaaaa","Vorlotis","189", 11);

insert into editora(codigo, nome, rua, bairro, numero, telefone, gerente)
values(123,"Biro's editora","Rua biro biro", "Biro", "17","17895863254","Gerisvaldo");
insert into editora(codigo, nome, rua, bairro, numero, telefone, gerente)
values(321,"Editora do JOOJ'S","Rua francisvaldo", "Jooj", "189","17558965710","Vladir");

insert into livro(isbn ,quantidade_estoque ,nome ,assunto ,autor ,valor ,codigoeditora)
values(175, 30,"As aventuras de Potter Harry e o fogo do calice", "Aventura", "Josias", 200.00 ,"123");
insert into livro(isbn ,quantidade_estoque ,nome ,assunto ,autor ,valor ,codigoeditora)
values(145, 30,"A solitaria velha carcomida", "Romance", "Bangos",100.00 ,"123");
insert into livro(isbn ,quantidade_estoque ,nome ,assunto ,autor ,valor ,codigoeditora)
values(160, 30,"O misterio do zé do picadinho", "Ficção", "Bangos",120.00 ,"123");
insert into livro(isbn ,quantidade_estoque ,nome ,assunto ,autor ,valor ,codigoeditora)
values(15, 30,"Como ser prefeito de são paulo", "Politca", "Corvas",200.00 ,"321");
insert into livro(isbn ,quantidade_estoque ,nome ,assunto ,autor ,valor ,codigoeditora)
values(250, 30,"O pensamento filosofico sobre o old spice", "Filosofia", "Terry Crews",50.00 ,"321");
insert into livro(isbn ,quantidade_estoque ,nome ,assunto ,autor ,valor ,codigoeditora)
values(891, 30, "O Ancapital", "Economia", "Karl Marx",550.00 ,"321");
insert into livro(isbn ,quantidade_estoque ,nome ,assunto ,autor ,valor ,codigoeditora)
values(445, 10, "Era um vez e fim", "Drama", "Mandy",100.00 ,"321");
insert into livro(isbn ,quantidade_estoque ,nome ,assunto ,autor ,valor ,codigoeditora)
values(321, 8, "Agrabrogi um conto dos flexans", "Aventura", "Reynaldo Perisvaldo",85.00 ,"123");
insert into livro(isbn ,quantidade_estoque ,nome ,assunto ,autor ,valor ,codigoeditora)
values(123, 5, "E the JOOJ", "Comedia", "Chavinho",145.00 ,"321");

insert into venda(codigocliente, codigo_livro, datacompra)
values (1, 1, "2020-12-09");
insert into venda(codigocliente, codigo_livro, datacompra)
values (2, 1, "2020-11-18");
insert into venda(codigocliente, codigo_livro, datacompra)
values (1, 2, "2020-02-08");
insert into venda(codigocliente, codigo_livro, datacompra)
values (3, 5, "2020-05-05");
insert into venda(codigocliente, codigo_livro, datacompra)
values (8, 6, "2020-06-18");
insert into venda(codigocliente, codigo_livro, datacompra)
values (7, 4, "2020-12-18");
insert into venda(codigocliente, codigo_livro, datacompra)
values (5, 3, "2020-12-11");
insert into venda(codigocliente, codigo_livro, datacompra)
values (4, 1, "2020-09-08");
insert into venda(codigocliente, codigo_livro, datacompra)
values (6, 5, "2020-08-08");
insert into venda(codigocliente, codigo_livro, datacompra)
values (3, 1, "2020-01-19");
insert into venda(codigocliente, codigo_livro, datacompra)
values (3, 5, "2020-01-30");
insert into venda(codigocliente, codigo_livro, datacompra)
values (2, 4, "2021-03-15");
insert into venda(codigocliente, codigo_livro, datacompra)
values (4, 3, "2021-03-03");
insert into venda(codigocliente, codigo_livro, datacompra)
values (6, 5, "2021-03-31");
insert into venda(codigocliente, codigo_livro, datacompra)
values (1, 4, "2021-03-10");
insert into venda(codigocliente, codigo_livro, datacompra)
values (6, 3, "2021-03-08");
insert into venda(codigocliente, codigo_livro, datacompra)
values (5, 5, "2021-03-25");

/*
2. Altere o nome de um livro cujo código seja igual a 1;*/
update livro 
set nome = "O senhor dos Aneis a socidedade do macho peludo"
where codigo = 1;

/*
3. Exclua o livro de código igual a 2;*/
delete from livro
where codigo = 2;

/*4. Selecione todos os livros (todas as colunas), ordene em ordem alfabética crescente pelo nome do livro;*/
select * from livro
order by nome;

/*
5. Selecione todas as vendas efetuadas no período de 01/03/2021 a 30/03/2021. 
Colunas a serem apresentadas: código, data;
*/
select codigo_compra, datacompra from compra
where datacompra 
between "2021-03-01" and "2021-03-31";

/*
6. Selecione os livros cuja quantidade em estoque está com menos de 10 exemplares. 
Ordene em ordem alfabética crescente pelo nome do livro. 
Colunas a serem apresentadas: código, nome e quantidade em estoque;*/
select codigo, nome, quantidade_estoque from livro
where quantidade_estoque <= 10
order by nome; 

/*
7. Selecione todos os livros em ordem crescente de nome, exibindo os dados de autores. 
Colunas a serem exibidas: código e nome do livro, código e nome do(s) autor(es);*/

select codigo, nome, isbn, autor from livro
order by nome;
/*
8. Selecione todos os clientes que comecem com a letra “A”. 
Ordene em ordem alfabética crescente pelo nome do cliente. 
Colunas a serem exibidas: código e nome;*/
select codigo, nome from cliente
where nome like "A%";
/*
9. Selecione todos os clientes cadastrados como pessoa física que comecem com a letra “A”. 
Ordene em ordem alfabética crescente pelo nome do cliente. 
Colunas a serem exibidas: código, cpf e nome;*/
select c.codigo, d.documento, c.nome from cliente c
inner join documento d on c.documento_codigo = d.codigo
where length(d.documento) = 11 and c.nome like "A%"
order by c.nome;

/*
10. Selecione a quantidade de vendas efetuadas no período de 01/03/2021 a 30/03/2021. 
Colunas a serem apresentadas: quantidade;*/
select count(*) from compra
where datacompra 
between "2021-03-01" and "2021-03-31";

/*
11. Selecione a quantidade de livros por editora. Ordene em ordem alfabética crescente pelo nome da editora. 
Colunas a serem exibidas: código, nome da editora, quantidade total de livros;*/

select e.codigo, e.nome, count(l.codigo) as QTDlivros from livro l
Inner Join editora e on l.codigoeditora = e.codigo
group by e.codigo, e.nome; 

/*
12. Selecione o total de compras efetuados por cliente. Ordene em ordem alfabética crescente pelo nome do cliente. 
Colunas a serem exibidas: código, nome, valor total de compra(s);
*/
select co.codigocliente, cl.nome, count(co.codigo_livro) as QTD from compra co
inner join cliente cl on co.codigocliente = cl.codigo
group by co.codigocliente, cl.nome
order by cl.nome;

/*
13. Selecione o livro recordista de vendas, aquele que mais vendeu. Colunas a serem exibidas: código, nome.
*/
select c.codigo_livro, l.nome from compra c
inner join livro l on c.codigo_livro = l.codigo
group by c.codigo_livro
having count(c.codigo_livro) = (select max(a.CNT) from
(select count(codigo_livro) as CNT from compra
group by codigo_livro) as a);