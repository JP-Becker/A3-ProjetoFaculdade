# FEITO POR JOÃO
CREATE DATABASE IF NOT EXISTS db_a3;

USE db_a3;

DROP TABLE IF EXISTS tb_amigos;
DROP TABLE IF EXISTS tb_ferramentas;
DROP TABLE IF EXISTS tb_emprestimos;


# criando tabela dos amigos
CREATE TABLE tb_amigos (
    idAmigo INTEGER NOT NULL,
    nomeAmigo VARCHAR(100),
    telefone VARCHAR(100),
    emprestimosTotais VARCHAR(50),
    emprestimosAtivos INTEGER,
    PRIMARY KEY(idAmigo)
);

# criando tabela das ferramentas
CREATE TABLE tb_ferramentas (
    idFerramenta INTEGER NOT NULL,
    nomeFerramenta VARCHAR(100),
    marca VARCHAR(100),
    custo DOUBLE,
    emprestada BOOLEAN,
    PRIMARY KEY(idFerramenta)
);

# criando tabela dos emprestimos 
CREATE TABLE tb_emprestimos (
    idEmprestimo INTEGER NOT NULL,
    dataEmprestimo DATE,
    dataDevolucao DATE,
    pendente BOOLEAN,
    PRIMARY KEY(idEmprestimo)
);



# inserindo amigos na BD
INSERT INTO tb_amigos(idAmigo,nomeAmigo,telefone,emprestimosTotais,emprestimosAtivos) VALUES (1,"João","48999666847",0,0);
INSERT INTO tb_amigos(idAmigo,nomeAmigo,telefone,emprestimosTotais,emprestimosAtivos) VALUES (2,"José","48991234589",0,0);
INSERT INTO tb_amigos(idAmigo,nomeAmigo,telefone,emprestimosTotais,emprestimosAtivos) VALUES (3,"Maria","489923452145",0,0);

# inserindo ferramentas
INSERT INTO tb_ferramentas(idFerramenta, nomeFerramenta, marca, custo, emprestada) VALUES (1, 'chave de fenda', 'philips', 9.99, false);
INSERT INTO tb_ferramentas(idFerramenta, nomeFerramenta, marca, custo, emprestada) VALUES (2, 'furadeira', 'samsung', 109.99, false);

# inserindo emprestimos na tabela de emprestimos
INSERT INTO tb_emprestimos(idEmprestimo,dataEmprestimo,dataDevolucao,pendente) VALUES (1,NULL,NULL,true);
INSERT INTO tb_emprestimos(idEmprestimo,dataEmprestimo,dataDevolucao,pendente) VALUES (2,NULL,NULL,true);
INSERT INTO tb_emprestimos(idEmprestimo,dataEmprestimo,dataDevolucao,pendente) VALUES (3,NULL,NULL,true);