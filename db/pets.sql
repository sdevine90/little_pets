DROP TABLE pets;
DROP TABLE owners;

CREATE TABLE owners(
id SERIAL8 primary key,
name VARCHAR(255) not null,
image VARCHAR(255) not null,
);

CREATE TABLE pets(
id SERIAL8 primary key,
name VARCHAR(255) not null,
image VARCHAR(255) not null,
owner_id INT8 references owners(id)
);

