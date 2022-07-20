



select nome_cliente, cpf_cliente as cpf, nome_city as cidade, nome_country as pais from cliente as cli
inner join city_cliente as cc on
cc.cliente = cli.id_cliente 
inner join city as c on
cc.city = c.id_city
inner join country as coun on
c.country = coun.id_country;

select nome_city as cidade from city as ci
inner join country as co on
ci.id_city = co.id_city;

select * from total;
select * from usuario;
select * from country;
select * from city;
select * from cliente;

INSERT INTO total (id_usuario, id_cliente ,id_country, id_city) VALUES (1, 5, 8, 22);

CREATE VIEW vw_total as
SELECT nome_usuario as Usuário, nome_cliente as Cliente, nome_country as País, nome_city as Cidade FROM total as t
INNER JOIN usuario as u on
t.id_usuario = u.id_usuario
INNER JOIN country as co on
t.id_country = co.id_country
INNER JOIN cliente as c on
t.id_cliente = c.id_cliente
INNER JOIN city as ci on
t.id_city = ci.id_city;

SELECT * FROM vw_total;


INSERT INTO city (nome_city, country) VALUES ('Salvador', 4);
INSERT INTO city (nome_city, country) VALUES ('Tucuruí', 4);
INSERT INTO city (nome_city, country) VALUES ('São Paulo', 4);
INSERT INTO city (nome_city, country) VALUES ('Campo Grande', 4);
INSERT INTO city (nome_city, country) VALUES ('Curitiba', 4);
INSERT INTO city (nome_city, country) VALUES ('Buenos Aires', 5);
INSERT INTO city (nome_city, country) VALUES ('Bariloche', 5);
INSERT INTO city (nome_city, country) VALUES ('Córdoba', 5);
INSERT INTO city (nome_city, country) VALUES ('Mendonza', 5);
INSERT INTO city (nome_city, country) VALUES ('Salta', 5);
INSERT INTO city (nome_city, country) VALUES ('Sucre', 6);
INSERT INTO city (nome_city, country) VALUES ('La paz', 6);
INSERT INTO city (nome_city, country) VALUES ('Cochabamba', 6);
INSERT INTO city (nome_city, country) VALUES ('Potosi', 6);
INSERT INTO city (nome_city, country) VALUES ('Oruro', 6);
INSERT INTO city (nome_city, country) VALUES ('Bogotá', 7);
INSERT INTO city (nome_city, country) VALUES ('Cáli', 7);
INSERT INTO city (nome_city, country) VALUES ('Medellin', 7);
INSERT INTO city (nome_city, country) VALUES ('Cúcuta', 7);
INSERT INTO city (nome_city, country) VALUES ('Santa Marta', 7);
INSERT INTO city (nome_city, country) VALUES ('Valparaíso', 8);
INSERT INTO city (nome_city, country) VALUES ('Viña del Mar', 8);
INSERT INTO city (nome_city, country) VALUES ('Puerto Varas', 8);
INSERT INTO city (nome_city, country) VALUES ('Púcon', 8);
INSERT INTO city (nome_city, country) VALUES ('Puerto Natales', 8);
INSERT INTO city (nome_city, country) VALUES ('Baños', 9);
INSERT INTO city (nome_city, country) VALUES ('Cuenca', 9);
INSERT INTO city (nome_city, country) VALUES ('Otavalo', 9);
INSERT INTO city (nome_city, country) VALUES ('Baviera', 10);
INSERT INTO city (nome_city, country) VALUES ('Berlim', 10);
INSERT INTO city (nome_city, country) VALUES ('Frankfurt', 10);
INSERT INTO city (nome_city, country) VALUES ('Sevilha', 11); 
INSERT INTO city (nome_city, country) VALUES ('Málaga', 11); 
INSERT INTO city (nome_city, country) VALUES ('Santiago de Compostela', 11); 
INSERT INTO city (nome_city, country) VALUES ('Lyon', 12);
INSERT INTO city (nome_city, country) VALUES ('Marselha', 12);
INSERT INTO city (nome_city, country) VALUES ('Paris', 12);
INSERT INTO city (nome_city, country) VALUES ('Vila Real', 13);
INSERT INTO city (nome_city, country) VALUES ('Coimbra', 13);
INSERT INTO city (nome_city, country) VALUES ('Lisboa', 13);
INSERT INTO city (nome_city, country) VALUES ('Estocolmo', 14);
INSERT INTO city (nome_city, country) VALUES ('Visby', 14);
INSERT INTO city (nome_city, country) VALUES ('Pequim', 15);
INSERT INTO city (nome_city, country) VALUES ('Hong Kong', 15);
INSERT INTO city (nome_city, country) VALUES ('Dubai', 16); 
INSERT INTO city (nome_city, country) VALUES ('Ajman', 16); 
INSERT INTO city (nome_city, country) VALUES ('Tóquio', 17);
INSERT INTO city (nome_city, country) VALUES ('Yokohama', 17);
INSERT INTO city (nome_city, country) VALUES ('Bangkok', 18); 
INSERT INTO city (nome_city, country) VALUES ('Surat Thani', 18); 
INSERT INTO city (nome_city, country) VALUES ('Nova Délhi', 19);
INSERT INTO city (nome_city, country) VALUES ('Mumbai', 19);

delete from city 
where id_city = 55

select * from city

SELECT Usuário, Cliente, País, Cidade FROM vw_total;