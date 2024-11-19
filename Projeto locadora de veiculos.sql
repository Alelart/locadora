create database locadora;
use locadora;

create table cliente(
cod_cliente int auto_increment primary key not null,
nome varchar(40) not null,
cpf numeric(11) unique,
endereco varchar(80),
telefone varchar(20));

create table veiculo(
cod_veiculo integer auto_increment primary key not null,
categoria varchar(20) not null,
marca varchar(20) not null,
modelo varchar(30) not null,
cor varchar(20) not null,
placa varchar(30) not null,
valor float);

create table vistoria(
cod_vistoria integer auto_increment primary key not null,
status_vistoria varchar(10),
cod_veiculo integer,
foreign key(cod_veiculo) references veiculo(cod_veiculo));

create table locadora(
cod_locadora varchar(1) primary key not null);

create table pedido(
cod_pedido integer auto_increment primary key not null,
data_locacao date,
data_devolucao date,
cod_cliente int,
foreign key(cod_cliente) references cliente(cod_cliente),
cod_veiculo integer,
foreign key(cod_veiculo) references veiculo(cod_veiculo),
cod_vistoria integer,
foreign key(cod_vistoria) references vistoria(cod_vistoria),
cod_locadora varchar(1),
foreign key(cod_locadora) references locadora(cod_locadora));