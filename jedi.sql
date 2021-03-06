
DROP TABLE lightsabers;
DROP TABLE jedi;

CREATE TABLE jedi (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT2
);

CREATE TABLE lightsabers (
  ed SERIAL8 PRIMARY KEY,
  hilt_metal VARCHAR(255) NOT NULL,
  color VARCHAR(255) NOT NULL,
  jedi_id INT8 REFERENCES jedi(id)
);

INSERT INTO jedi (name, darkside, age) VALUES ('Luke', false, 21);

INSERT INTO jedi (name, age) VALUES ('Eugene', 100);

INSERT INTO jedi (name, darkside, age) VALUES ('Vader', true, 101);

INSERT INTO jedi (name, darkside, age) VALUES ('Yoda', false, 700);

UPDATE jedi SET darkside = true;

UPDATE jedi SET darkside = false WHERE name = 'Luke';

UPDATE jedi SET age = 24 WHERE name = 'Eugene' AND darkside = true;

-- INSERT INTO jedi (name, darkside, age) VALUES ('Anakin', false, 12);
--
-- UPDATE jedi SET age = 22 WHERE name = 'Anakin';
--
-- UPDATE jedi SET darkside = true WHERE name = 'Anakin';

-- DELETE FROM jedi WHERE name = 'Eugene'; --Note: use with causion


SELECT * FROM jedi;

INSERT INTO lightsabers(color, jedi_id, hilt_metal) VALUES ('Green', 4, 'Gold');

INSERT INTO lightsabers(color, jedi_id, hilt_metal) VALUES ('Green', 1, 'Palladium');

INSERT INTO lightsabers(color, jedi_id, hilt_metal) VALUES ('Salmon', 2, 'Diamond encrusted Bling');

-- INSERT INTO lightsabers(color) VALUES ('Red'); --Note: with NOT NULL applied, this code line break.

SELECT * FROM lightsabers;
