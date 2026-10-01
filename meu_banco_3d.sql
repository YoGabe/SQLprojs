create database academia_cj;
use academia_cj;

create table planos(
id_planos int auto_increment primary key,
nome varchar(50) not null,
valor_mensal decimal (8,2) not null,
duracar_meses int not null
);

create table alunos(
id_aluno int auto_increment primary key,
nome varchar(50) not null,
cpf varchar(14) unique not null,
telefone varchar(20),
data_nascimento date not null
);

create table instrutores(
id_instrutor int auto_increment primary key,
nome varchar(100) not null,
especialidade varchar(50) not null,
telefone varchar(20)
);

create table matriculas(
id_matricula int auto_increment primary key,
id_aluno int not null,
id_plano int not null,
id_instrutor int,
data_inicio date default(current_date),
status varchar(20) default 'ativo',
foreign key (id_aluno) references alunos(id_aluno),
foreign key (id_plano) references planos(id_planos),
foreign key (id_instrutor) references instrutores(id_instrutor)
);