-- Tables

-- Customer table

CREATE TABLE customer(
customer_id SERIAL PRIMARY KEY,
customer_name VARCHAR(50) NOT NULL,
);

SELECT *
FROM customer;


--Ticket table

CREATE TABLE ticket(
ticket_id SERIAL PRIMARY KEY,
customer_id INTEGER NOT NULL,
FOREIGN KEY(customer_id) REFERENCES customer(customer_id)

);


SELECT *
FROM ticket;
--Create theater table

CREATE TABLE theater(
FOREIGN KEY(theater_id) REFERENCES movie(movie_id),
FOREIGN KEY(ticket_id) REFERENCES customer(customer_id)

);

-- create movie table

CREATE TABLE movie
movie_id SERIAL PRIMARY KEY,
movie_name VARCHAR(50)

);

SELECT *
FROM customer;
