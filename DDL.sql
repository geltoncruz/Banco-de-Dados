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
);
INSERT INTO departamento (nome,descricao) values ('Limpeza','Servicos Gerais');
INSERT INTO departamento (nome,descricao) values ('Recursos Humanos','Setor Pessoal');
INSERT INTO departamento (nome,descricao) values ('Financeiro','Sub Setor de RH');
INSERT INTO departamento (nome,descricao) values ('Tecnlogia de Informação','Setor de Modernização');