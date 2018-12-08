#!/usr/bin/env bash

# you need local postgres for thsi script to work
# install with https://wiki.postgresql.org/wiki/Homebrew

# create db
createdb docker_showcase

# create customer table and values
psql -d docker_showcase -c \
"Create TABLE customer(
id serial PRIMARY KEY,
name VARCHAR(50) UNIQUE NOT NULL,
phone VARCHAR(50) NOT NULL,
email VARCHAR(150) NOT NULL);"

psql -d docker_showcase -c \
"INSERT INTO customer 
VALUES 
(DEFAULT, 'customer_1', '0123456', 'email@anyprovider.com')
,(DEFAULT, 'customer_2', '0123456', 'email@anyprovider.com')
,(DEFAULT, 'customer_3', '0123456', 'email@anyprovider.com')
,(DEFAULT, 'customer_4', '0123456', 'email@anyprovider.com')
,(DEFAULT, 'customer_5', '0123456', 'email@anyprovider.com')
,(DEFAULT, 'customer_6', '0123456', 'email@anyprovider.com');"

# create article table and values
psql -d docker_showcase -c \
"CREATE TABLE article(
id serial PRIMARY KEY,
number VARCHAR(50) UNIQUE NOT NULL,
name VARCHAR(250) NOT NULL,
type VARCHAR(100) NOT NULL);"

psql -d docker_showcase -c \
"INSERT INTO article (id, name, type, number) 
VALUES (DEFAULT, 'article', 'non-food', '1')
, (DEFAULT, 'article', 'non-food', '2')
, (DEFAULT, 'article', 'non-food', '3')
, (DEFAULT, 'article', 'non-food', '4')
, (DEFAULT, 'article', 'non-food', '5')
, (DEFAULT, 'article', 'non-food', '6');"

# connect
# psql -d docker_showcase

