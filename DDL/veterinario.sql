CREATE DATABASE veterinario;
use veterinario;

create table especialidade(
 codigo int(11) unsigned not null auto_increment,
 especialidade varchar(20) not null,
 primary key(codigo)
);

create table medico(
 crmv varchar(6) not null,
 nome varchar(120) not null,
 nascimento date not null,
 cod_especialidade int(11) unsigned not null
);

alter table medico 
	add constraint fk_medico_especialidade 
    foreign key(cod_especialidade) 
    references especialidade(codigo);
    
ALTER TABLE medico ADD PRIMARY KEY (crmv);

create table especie(
 codigo int(11) unsigned not null auto_increment,
 especie varchar(50) not null,
 descricao text,
 primary key(codigo)
);
create table proprietario(
cpf int(11) unsigned not null auto_increment,
nome varchar(120) not null,
endereco varchar(200) not null,
nascimento date not null,
primary key(cpf)
);
create table animal(
 codigo int(11) unsigned not null auto_increment,
 nome varchar(40) not null,
 nascimento date not null,
 peso double,
 cod_especie int(11) unsigned not null,
 cod_proprietario int(11) unsigned not null,
 primary key(codigo),
 constraint fk_animal_especie foreign key(cod_especie) references especialidade(codigo),
 constraint fk_animal_proprietario foreign key(cod_proprietario) references proprietario(cpf)
 );
 
 create table consulta(
 codigo int(11) unsigned not null auto_increment,
 cod_animal int(11) unsigned not null,
 cod_servico int(11) unsigned not null,
 crmv varchar(6) not null,
 primary key(codigo),
 constraint fk_consulta_animal foreign key(cod_animal) references animal(codigo),
 constraint fk_consulta_servico foreign key(cod_servico) references servico(codigo)
 );
 create table servico(
  codigo int(11) unsigned not null auto_increment,
  servico varchar(50) not null,
  valor double not null,
  primary key(codigo)
 );