#DISTINCT. OCORRÊNCIA DOS NOMES DISTINTOS OU SEJA, REGISTRADO NO MÍNIMO 1 VEZ.
select distinct(cod_departamento) from  empregado;

#ORDERBY
select * from departamento order by descricao ASC;
select * from departamento order by nome ASC;

select * from empregado order by salario DESC;

select sum(cod_departamento) as total from empregado;
select avg(salario) as media from empregado;
select min(salario) as minimo from empregado;
select max(salario) as maximo from empregado;
select count(salario) as maximo from empregado;

select * from empregado;
select * from departamento;

select sum(salario) as somaSalario from empregado WHERE cod_departamento = 1;
select nome,sum(salario) from empregado group by cod_departamento;