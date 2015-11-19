CREATE DATABASE empresa;
use empresa;
create table departamento(
	codigo int unsigned not null auto_increment,
    nome varchar(40) not null,
    descricao text,
    primary key(codigo)
);
create table empregado(
	matricula int(4) unsigned zerofill not null,
    nome varchar(80) not null,
    salario double(2,2) not null,
    cod_departamento int unsigned not null,
    primary key(matricula),
    constraint fk_empregado_departamento 
    foreign key(cod_departamento) references departamento(codigo)
)engine=Innodb;
INSERT INTO departamento (nome,descricao) values ('Limpeza','Servicos Gerais');
INSERT INTO departamento (nome,descricao) values ('Recursos Humanos','Setor Pessoal');
INSERT INTO departamento (nome,descricao) values ('Financeiro','Sub Setor de RH');
INSERT INTO departamento (nome,descricao) values ('Tecnlogia de Informação','Setor de Modernização');

INSERT INTO empregado (matricula,nome,salario,cod_departamento) values
(0001,'Joaquim Jose da Silva Xavier',2.200,4);
INSERT INTO empregado (matricula,nome,salario,cod_departamento) values
(0002,'Juliano Moreira',1.450,4);
INSERT INTO empregado (matricula,nome,salario,cod_departamento) values
(0003,'Cristiano Ronaldo',1.50,1);
INSERT INTO empregado (nome,salario,cod_departamento) values
('Dilma Rousseff',3500.00,1);
INSERT INTO empregado (nome,salario,cod_departamento) values
('Jose Sarnei',9200.00,2);
INSERT INTO empregado (nome,salario,cod_departamento) values
('Eduardo Campos',13500.00,3);
INSERT INTO empregado (nome,salario,cod_departamento) values
('Luciana Furquin',7500.00,3);
INSERT INTO empregado (nome,salario,cod_departamento) values
('Luiz Inacio Lula da Silva',2500.00,2);

update empregado set salario=200.00 where matricula = 0005;

select * from departamento;

alter table empregado CHANGE matricula matricula int(4) unsigned zerofill not null auto_increment;
alter table empregado CHANGE salario salario double(4,2) not null ;
delete from departamento where codigo = 1;
update departamento set codigo=1 where codigo = 4;
alter table empregado drop foreign key fk_empregado_departamento;
alter table empregado add constraint fk_empregado_departamento 
  foreign key(cod_departamento) references departamento(codigo)
  on delete cascade on update cascade;


DESC departamento;
SELECT codigo,nome,descricao from departamento;
SELECT nome,descricao from departamento;
SELECT * from departamento;
select * from empregado;

select matricula,nome from empregado where cod_departamento = 1;
select matricula,nome,cod_departamento from empregado where cod_departamento > 1;

INSERT INTO departamento (nome) values ('Comercial');
INSERT INTO departamento (nome) values ('Expedição');

select codigo,nome from departamento where codigo between 3 and 6;
select codigo,nome from departamento where codigo not between 3 and 6;
select nome from empregado where nome like '%jose%';


