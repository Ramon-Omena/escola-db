create database Academia;
use Academia;

CREATE TABLE modalidades (
    id_modalidade int AUTO_INCREMENT PRIMARY KEY,
    nome_modalidade varchar(30) NOT NULL,
    nome_instrutor varchar(30) NOT NULL
);

CREATE TABLE alunos (
    id_alunos int AUTO_INCREMENT PRIMARY KEY,
    nome_alunos varchar(30) NOT NULL,
    modalidade_id INT NULL,
    CONSTRAINT FOREIGN KEY (modalidade_id) REFERENCES modalidades (id_modalidade)
);

CREATE TABLE aviso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mensagem VARCHAR(50) NOT NULL,
    aluno_avisado_id INT,
    CONSTRAINT FOREIGN KEY (aluno_avisado_id) REFERENCES alunos (id_alunos)
);

insert into modalidades(nome_modalidade, nome_instrutor) values ('Musculação', 'Fábio Farias');
insert into modalidades(nome_modalidade, nome_instrutor) values ('Ginástica', 'Rose Ronalsa');
insert into modalidades(nome_modalidade, nome_instrutor) values ('Zumba', 'Maria Mercedes');
insert into modalidades(nome_modalidade, nome_instrutor) values ('CrossFit', 'Antônio Antunes');    

insert into alunos(nome_alunos, modalidade_id) values ('Walter', 1);
insert into alunos(nome_alunos, modalidade_id) values ('Wesley', 1);
insert into alunos(nome_alunos, modalidade_id) values ('Wanda', 2);
insert into alunos(nome_alunos, modalidade_id) values ('Wanessa', 3);
insert into alunos(nome_alunos, modalidade_id) values ('Waldomiro', NULL);
insert into alunos(nome_alunos, modalidade_id) values ('Waleria', NULL);

select nome_alunos, nome_modalidade from alunos
inner join modalidades
on modalidades.id_modalidade = alunos.modalidade_id;

select nome_alunos, nome_modalidade
from
alunos left join modalidades
on modalidades.id_modalidade = alunos.modalidade_id;

select nome_alunos, nome_modalidade
from
alunos right join modalidades
on modalidades.id_modalidade = alunos.modalidade_id;

select nome_alunos, nome_modalidade
from
alunos left join modalidades
on modalidades.id_modalidade = alunos.modalidade_id;
union
select nome_alunos, nome_modalidade
from
alunos right join modalidades
on modalidades.id_modalidade = alunos.modalidade_id;

--CRIANDO TRIGGER
CREATE TRIGGER aluno_matriculado AFTER INSERT
ON alunos
FOR EACH ROW
BEGIN
    IF NEW.modalidade_id IS NULL THEN
        INSERT INTO aviso(aluno_avisado_id, mensagem) VALUES
        (NEW.id_aluno, CONCAT('NEW.nome_alunos', selecione uma modalidade.'));
    END IF;
END

