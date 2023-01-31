create table ALUNO(
	id int unsigned not null auto_increment,
    nome varchar(35) not null,
    matricula int not null,
    email varchar(35) not null,
    endereco varchar(50) not null,
    telefone varchar(20) not null,
    PRIMARY KEY (id)
);

insert into ALUNO(id, nome, matricula, email, endereco, telefone) values
(01, 'João Carlos', 1234, 'Jcarlos@gmail.com', 'Rua 13 de maio', '(11)7825-4489');

insert into ALUNO(id, nome, matricula, email, endereco, telefone) values
(02, 'José Vitor', 2345, 'Jvitor@gmail.com', 'Rua da Saudade', '(11)7825-6589');

insert into ALUNO(id, nome, matricula, email, endereco, telefone) values
(03, 'Paulo André', 3456, 'Pandr@gmail.com', 'Rua do Sol', '(11)7825-4495');

select * from ALUNO;

