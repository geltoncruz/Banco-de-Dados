#criar bases de dados `empregado`
create database empregado;

#SELECIONAR BASE DE DADOS
use empregado;

#CRIAR ENTIDADE FUNÇÃO
create table funcao(
 codigo int(4) unsigned zerofill not null auto_increment,
 cargo varchar(60) not null,
 descricao text,
 #Definir chave primária
 primary key(codigo)
 )
 #VERIFCAR TABELA CRIADA
 show tables;
 