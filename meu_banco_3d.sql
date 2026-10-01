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

insert into planos(nome, valor_mensal, duracar_meses) values
('Mensal Básico', 89.90, 1),
('Trimestral fit', 79.90, 3),
('Semestral Plus', 69.90, 6),
('Anual VIP', 59.90, 12); 

insert into instrutores(nome, especialidade, telefone) values
('Pedrão Extra Black', 'Crossfit', '99 6969-4141'),
('Betão White Chocolate','Musculação', '99 5555-4443'),
('Seu Zé', 'Pilates', '99 8888-7777'),
('LiL Luis "Pega no pesado" Silveira', 'Musculação', '99 6767-0000');

insert into alunos(nome,cpf,telefone,data_nascimento) values
('John Treina Mole', '111.111.111-12', '99 4141-0101', "1999-01-12"),
('Vitinho Molesta Velho', '222.222.222-23', '99 5151-1111', "2005-05-29"),
('Eric Cartman', '555.555.555-56', '99 6667-6667', "2013-09-11");

insert into matriculas(id_aluno, id_plano, id_instrutor) values
(1,5,1),
(2,4,3),
(5,1,5);  
