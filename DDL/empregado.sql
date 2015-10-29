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
 );
 #VERIFCAR TABELA CRIADA
 show tables;
 #DESCRIÇÃO DA TABELA
 describe funcao;
 
 #CRIAR ENTIDADE FUNCIONÁRIO
 create table funcionario(
  matricula int(4) unsigned zerofill not null auto_increment,
  nome varchar(100) not null,
  codCargo int(4) unsigned zerofill not null,
  #Definir Chaves
  primary key(matricula),
  constraint fk_funcionario_Cargo foreign key(codCargo) references funcao(codigo)
  );