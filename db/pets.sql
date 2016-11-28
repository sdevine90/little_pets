DROP TABLE owners;
DROP TABLE pets;


CREATE TABLE pets(
id SERIAL8 primary key,
name VARCHAR(255) not null
);

CREATE TABLE owners(
id SERIAL8 primary key,
name VARCHAR(255) not null
);