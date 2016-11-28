DROP TABLE pets;
DROP TABLE owners;

CREATE TABLE owners(
id SERIAL8 primary key,
name VARCHAR(255) not null
);

CREATE TABLE pets(
id SERIAL8 primary key,
name VARCHAR(255) not null
);

