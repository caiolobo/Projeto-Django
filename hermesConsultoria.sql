CREATE DATABASE hermes_consultoria;

USE hermes_consultoria;

CREATE TABLE IF NOT EXISTS usuario(
	id_usuario INT(11) NOT NULL,
    nome_usuario VARCHAR(50) NOT NULL,
    email VARCHAR(40) NOT NULL,
    senha VARCHAR(18) NOT NULL
);
ALTER TABLE usuario
CHANGE COLUMN id_usuario id_usuario INT(11) NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id_usuario);

CREATE TABLE IF NOT EXISTS cliente(
	id_cliente INT(11) NOT NULL,
    nome_cliente VARCHAR(40) NOT NULL,
    cpf_cliente VARCHAR(18) NOT NULL,
    ano_nascimento VARCHAR(10) NOT NULL
);
ALTER TABLE cliente
CHANGE COLUMN id_cliente id_cliente INT(11) NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id_cliente);


CREATE TABLE IF NOT EXISTS country(
	id_country INT(11) NOT NULL,
    nome_country VARCHAR(30) NOT NULL
);
ALTER TABLE country
CHANGE COLUMN id_country id_country INT(11) NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id_country);

CREATE TABLE IF NOT EXISTS city(
	id_city INT(11) NOT NULL,
    nome_city VARCHAR(30) NOT NULL,
    country INT(11) NOT NULL
);
ALTER TABLE city
CHANGE COLUMN id_city id_city INT(11) NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id_city);

CREATE TABLE IF NOT EXISTS total(
	id_usuario INT(11) NOT NULL,
    id_cliente INT(11) NOT NULL,
    id_country INT(11) NOT NULL,
    id_city INT(11) NOT NULL
);

ALTER TABLE city
ADD CONSTRAINT fk_country_city FOREIGN KEY (country) REFERENCES country (id_country);

ALTER TABLE total
ADD CONSTRAINT fk_total_usuario FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario),
ADD CONSTRAINT fk_total_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
ADD CONSTRAINT fk_total_country FOREIGN KEY (id_country) REFERENCES country (id_country),
ADD CONSTRAINT fk_total_city FOREIGN KEY (id_city) REFERENCES city (id_city);

