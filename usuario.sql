drop database if exists usuarios;
create database usuarios;
use usuarios;
create table pessoas(
     id_pessoa integer not null auto_increment,
     nome varchar(40) not null,
     primary key (id_pessoa)
);

create table telefones (
    id_pessoa integer not null,
    telefone varchar(15) not null,
    constraint fk_tel_pess
    foreign key (id_pessoa)
    references pessoas(id_pessoa)
);

create table usuarios (
    id_pessoa integer not null,
      login varchar(10) not null,
      senha varchar(50) not null,
      constraint fk_possui
    foreign key (id_pessoa)
    references pessoas(id_pessoa)
);
show databases


