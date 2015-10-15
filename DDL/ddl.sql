#Conectando ao bando de dados
mysql -u <user> - p <senha>;
#CRIAR BANCO DE dados
CREATE DATABASE <nomeDaBase>;
#CRIAR ENTIDADE ENTIDADE
CREATE TABLE <nomeDaTabela>(
  matricula int(4) zerofill unsigned not null auto_increment,
  nome varchar(60) not null,
  primary key(matricula)
)
