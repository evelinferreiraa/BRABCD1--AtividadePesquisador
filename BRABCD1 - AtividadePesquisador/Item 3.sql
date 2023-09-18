# Évelin Ferreira da Silva - BP3039447

create database if not exists atividadePesquisador;
use atividadePesquisador; 
show databases;

create table if not exists pesquisador(
CPF int not null unique,
nome varchar(145) not null,
primary key(CPF),
foreign key (idInstituicao) references instituicao(idInstituicao)
)engine InnoDB;

desc pesquisador;

create table if not exists instituicao(
idInstituicao int not null unique,
nome varchar(45) not null,
primary key (idInstituicao)
)engine InnoDB;

desc instituicao;

create table if not exists artigo(
idArtigo int not null unique,
tituloArtigo varchar(45) not null,
pagInicial int not null,
pagFinal int not null,
primary key (idArtigo),
foreign key (idVeiculo) references veiculo (idVeiculo)
)engine InnoDB;

desc artigo;

create table if not exists veiculo(
idVeiculo int not null unique,
tituloVeiculo varchar(45) NOT NULL,
local varchar(45) not null
)engine InnoDB;

desc veiculo;

create table if not exists artigo_has_pesquisador(
foreign key (idArtigo) references artigo (idArtigo),
foreign key (idPesquisador) references pesquisador (idPesquisador)
);