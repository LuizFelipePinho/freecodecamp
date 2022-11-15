CREATE DATABASE universe;

-- \c universe

-- Then, you should add tables named galaxy, star, planet, and moon

CREATE TABLE galaxy();
CREATE TABLE star();
CREATE TABLE planet();
CREATE TABLE moon();


-- Each table should have a primary key
ALTER TABLE galaxy ADD COLUMN galaxy_id SERIAL PRIMARY KEY; 
ALTER TABLE star ADD COLUMN star_id SERIAL PRIMARY KEY; 
ALTER TABLE planet ADD COLUMN planet_id SERIAL PRIMARY KEY;
ALTER TABLE moon ADD COLUMN moon_id SERIAL PRIMARY KEY;


-- Each primary key should automatically increment
--done  

-- Each table should have a name column
ALTER TABLE galaxy ADD COLUMN name VARCHAR(100);
ALTER TABLE star ADD COLUMN name VARCHAR(100);
ALTER TABLE planet ADD COLUMN name VARCHAR(100);
ALTER TABLE moon ADD COLUMN name VARCHAR(100);

-- idade e tamanho da galaxy 
-- age e size  INT em galaxy

ALTER TABLE galaxy ADD COLUMN age INT;
ALTER TABLE galaxy ADD COLUMN size INT;

-- live NUMERIC em galaxias 
ALTER TABLE galaxy ADD COLUMN live NUMERIC;

-- description TEXT em galaxias
ALTER TABLE galaxy ADD COLUMN description TEXT; 


-- life e water BOOLEAN em planeta 
ALTER TABLE planet ADD COLUMN life BOOLEAN;
ALTER TABLE planet ADD COLUMN water BOOLEAN;

-- Each "star" should have a foreign key that references one of the rows in galaxy
-- Cada "estrela" deve ter uma chave estrangeira que faça referência a uma das linhas da galáxia
-- obs: uma galaxia pode ter varias estrelas. Relação one-to-many 
-- obs2: as FK devem ficar onde ocorrem as muitas relações, no caso, em star

ALTER TABLE star ADD COLUMN galaxy_id INT NOT NULL REFERENCES galaxy(galaxy_id);


-- ADICIONANDO UM NOME EM GALAXY: 
-- name: Via Láctea  
-- age: 18 
-- size: 106
-- live:  9.1
-- description:  Possui uma forma em espiral

INSERT INTO galaxy(name, age, size, live, description) VALUES ('Via lactea', 18, 106, 9.1, 'Possui uma forma espiral');

INSERT INTO star(name, galaxy_id) VALUES ('Sistema Solar', 1);


-- Each "planet" should have a foreign key that references one of the rows in star
-- Cada "planeta" deve ter uma chave estrangeira que faça referência a uma das linhas em estrela
-- obs: muitos planetas podem ter uma estrela, one-to-many
ALTER TABLE planet ADD COLUMN star_id INT NOT NULL REFERENCES star(star_id);

-- name: Terra
-- life: TRUE
-- water: TRUE
-- star_id: 1

INSERT INTO planet(name, life, water, star_id) VALUES ('Terra',TRUE, TRUE, 1);

-- each "moon" should have a foreign key that references one of the rows in planet
-- cada "lua" deve ter uma chave estrangeira que faça referência a uma das linhas do planeta

ALTER TABLE moon ADD COLUMN planet_id INT NOT NULL REFERENCES planet(planet_id);

INSERT INTO moon(name, planet_id) VALUES('Lua', 1);

-- Criar mais uma tabela chamada nebula (nebulosa) com name 

CREATE TABLE nebula(nebula_id SERIAL PRIMARY KEY, name VARCHAR(150) );

-- Each table should have at least three rows
-- cada tabela deve ter 3 linhas 
-- planet precisa de 2, 
-- name: Marte
-- life: False 
-- water: true 
-- star_id: 1
INSERT INTO planet(name, life, water, star_id) VALUES('Marte', FALSE, TRUE, 1);
INSERT INTO planet(name, life, water, star_id) VALUES('Jupter', FALSE, FALSE, 1);

-- em star 

-- Betelgeuse, Bellatrix e Rigel
INSERT INTO star(name, galaxy_id) VALUES('Betelgeuse', 1);
INSERT INTO star(name, galaxy_id) VALUES('Bellatrix', 1);

-- moon
-- europa -> jupter
-- fobos : marte

INSERT INTO moon(name, planet_id) VALUES('Fobos', 2);
INSERT INTO moon(name, planet_id) VALUES('Europa', 3);

-- n foi pedido mas é obvio que uma nebulosa precisa estar associada a uma galaxia
ALTER TABLE nebula ADD COLUMN galaxy_id INT NOT NULL REFERENCES galaxy(galaxy_id); 
-- nebulosa da via lactea 
-- Carina 
-- Pilares
-- milky way

INSERT INTO nebula(name, galaxy_id) VALUES('Carina', 1);
INSERT INTO nebula(name, galaxy_id) VALUES('Pilares', 1);
INSERT INTO nebula(name, galaxy_id) VALUES('Milky Way', 1);

-- mais duas galaxias 
-- name: Andromeda
-- age: 19
-- size: 
-- live: 
-- description: É a mais próxima grande galáxia da Via Láctea.
INSERT INTO galaxy(name, age, size, live, description) VALUES ('Andromeda', 19, 110, 1.1, 'É a mais próxima da via lactea');

-- Galáxia Olho Negro
-- name: Andromeda
-- age: 86 
-- size: 
-- live: 
-- description: Tem os pelidos de "Olho Negro" e "Olho Mau" .
INSERT INTO galaxy(name, age, size, live, description) VALUES ('Galaxia olho negro', 86, 80, 3.1, 'Tem os apelidos de olho mau e olho negro');


-- The galaxy and star tables should each have at least six rows
-- As tabelas de galáxias e estrelas devem ter pelo menos seis linhas cada
-- preciso de mais 3 linhas pra galaxia

-- name: Galáxia de Bode
-- age: 86 
-- size: 
-- live: 
-- description: Possui o nome do seu criador
INSERT INTO galaxy(name, age, size, live, description) VALUES('Galaxia de Bode', 78, 44, 2.1, 'Possui o nome do seu criador');


-- name: Galáxia Charuto
-- age: 86 
-- size: 
-- live: 
-- description: Parece com um charuto
INSERT INTO galaxy(name, age, size, live, description) VALUES('Galaxia Charuto', 28, 94, 6.1, 'Parece com um charuto');

-- name: Galáxia do Cometa
-- age: 43 
-- size: 
-- live: 
-- description: Faz lembrar um cometa
INSERT INTO galaxy(name, age, size, live, description) VALUES('Galaxio do Cometa', 82, 54, 2.3, 'Faz lembrar um cometa');

-- preciso de mais 3 pra star
-- KW Sagittarii
INSERT INTO star(name, galaxy_id) VALUES ('KW Sagittarii', 1);
-- VV Cephei A
--  Mu Cephei
INSERT INTO star(name, galaxy_id) VALUES ('VV Cephei A', 1);
INSERT INTO star(name, galaxy_id) VALUES ('Mu Cephei', 1);

-- planeta precisa de mais 9 linhas 
INSERT INTO planet(name, life, water, star_id) VALUES ('Mercurio', false, false, 1);
INSERT INTO planet(name, life, water, star_id) VALUES ('Venus', false, false, 1);
INSERT INTO planet(name, life, water, star_id) VALUES ('Venus', false, false, 1);^C
INSERT INTO planet(name, life, water, star_id) VALUES ('Saturno', false, false, 1);
INSERT INTO planet(name, life, water, star_id) VALUES ('Urano', false, false, 1);
INSERT INTO planet(name, life, water, star_id) VALUES ('Netuno', false, false, 1);
INSERT INTO planet(name, life, water, star_id) VALUES ('Plutao', false, false, 1);
INSERT INTO planet(name, life, water, star_id) VALUES ('Messier 31', false, false, 2);
INSERT INTO planet(name, life, water, star_id) VALUES ('Ipsilon Andromeda', false, false, 2);
INSERT INTO planet(name, life, water, star_id) VALUES ('Planeta 3 de Ipsilon Andromeda', false, false, 2);


-- The moon table should have at least 20 rows
 INSERT INTO moon(name, planet_id) VALUES('Deimos', 2);
 INSERT INTO moon(name, planet_id) VALUES('Japeto', 6);
 INSERT INTO moon(name, planet_id) VALUES('Hiperion', 6);
 INSERT INTO moon(name, planet_id) VALUES('Tritao', 8);
 INSERT INTO moon(name, planet_id) VALUES('Encelado', 6);
 INSERT INTO moon(name, planet_id) VALUES('Io', 3);
 INSERT INTO moon(name, planet_id) VALUES('Atlas', 6);
 INSERT INTO moon(name, planet_id) VALUES('Nereida', 8);
 INSERT INTO moon(name, planet_id) VALUES('Miranda', 7);
 INSERT INTO moon(name, planet_id) VALUES('Mimas', 6);
 INSERT INTO moon(name, planet_id) VALUES('Titan', 6);
 INSERT INTO moon(name, planet_id) VALUES('Callisto', 3);
 INSERT INTO moon(name, planet_id) VALUES('Titania', 8);
 INSERT INTO moon(name, planet_id) VALUES('Rhea', 7);
 INSERT INTO moon(name, planet_id) VALUES('Oberon', 8);
 INSERT INTO moon(name, planet_id) VALUES('Iapetus', 7);
 INSERT INTO moon(name, planet_id) VALUES('Umbriel', 8);
 INSERT INTO moon(name, planet_id) VALUES('Dione', 7);
 INSERT INTO moon(name, planet_id) VALUES('Thetys', 7);
 INSERT INTO moon(name, planet_id) VALUES('Arial', 8);

 -- The galaxy, star, planet, and moon tables should each have at least five columns
-- mais 2 colunas em star
-- mais 1 coluna em planet 
-- mais 2 em moon
ALTER TABLE planet ADD COLUMN size INT;


 ALTER TABLE star ADD COLUMN constellation VARCHAR(200);
 ALTER TABLE star ADD COLUMN distance_from_earth VARCHAR(200);

ALTER TABLE moon ADD COLUMN distance_from_earth INT;
ALTER TABLE moon ADD COLUMN constellation VARCHAR(200);

-- Pelo menos duas colunas por tabela não devem aceitar valores NULL
ALTER TABLE galaxy ALTER COLUMN name SET NOT NULL;

ALTER TABLE star ALTER COLUMN name SET NOT NULL;
ALTER TABLE planet ALTER COLUMN name SET NOT NULL;
ALTER TABLE moon ALTER COLUMN name SET NOT NULL;
ALTER TABLE nebula ALTER COLUMN name SET NOT NULL;


-- At least one column from each table should be required to be UNIQUE

ALTER TABLE galaxy ADD UNIQUE(name);
ALTER TABLE planet ADD UNIQUE(name);
ALTER TABLE star ADD UNIQUE(name);
ALTER TABLE nebula  ADD UNIQUE(name);