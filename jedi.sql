DROP TABLE jedi;

CREATE TABLE jedi (
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT2
);

INSERT INTO jedi (name, darkside, age) VALUES ('Luke', false, 21);

INSERT INTO jedi (name, age) VALUES ('Eugene', 100);

INSERT INTO jedi (name, darkside, age) VALUES ('Vader', true, 101);

UPDATE jedi SET darkside = true;

UPDATE jedi SET darkside = false WHERE name = 'Luke';

UPDATE jedi SET age = 27 WHERE name = 'Eugene' AND darkside = true;

INSERT INTO jedi (name, darkside, age) VALUES ('Anakin', false, 12);

UPDATE jedi SET age = 22 WHERE name = 'Anakin';

UPDATE jedi SET darkside = true WHERE name = 'Anakin';



SELECT * FROM jedi;
