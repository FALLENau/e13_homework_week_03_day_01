DROP TABLE jedi;

CREATE TABLE jedi (
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT2
);

INSERT INTO jedi (name, darkside, age) VALUES ('Luke', false, 21);

INSERT INTO jedi (name, age) VALUES ('Eugene', 100);

INSERT INTO jedi (name, darkside, age) VALUES ('Vader', true, 101);

SELECT * FROM jedi;
