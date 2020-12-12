CREATE DATABASE sessao;

USE sessao;

CREATE TABLE usuario(
	codUsuario INT AUTO_INCREMENT PRIMARY KEY,
    email varchar(45) NOT NULL,
    senha varchar(45) NOT NULL,
    nome varchar(45) NOT NULL,
    dataCadastro date NOT NULL,
    genero TINYINT(4),
    dataNasc date
);

CREATE TABLE transtorno(
	codTranstorno INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(45) NOT NULL,
    descricao varchar(45),
    indiceOcorrencia double
);

CREATE TABLE sintoma(
	codSintoma INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(45) NOT NULL,
    descricao varchar(45),
    codTranstorno INT NOT NULL,
    FOREIGN KEY (codTranstorno) REFERENCES transtorno(codTranstorno)
);

CREATE TABLE sessao(
	dataInicio datetime,
    dataTermino datetime,
    statusSessao TINYINT(3),
    codUsuario INT,
    codTranstorno INT,
    PRIMARY KEY(codUsuario, codTranstorno)
);