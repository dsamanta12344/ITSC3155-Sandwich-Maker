-- Assignment 3: Ham Sandwich Maker Database
-- Creates the sandwich_maker database, its three tables, inserts the data,
-- and selects from each table.

-- 1. Create the database
DROP DATABASE IF EXISTS sandwich_maker;
CREATE DATABASE sandwich_maker;
USE sandwich_maker;

-- 2. Create the tables
CREATE TABLE resources (
    item varchar(50),
    amount int
);

CREATE TABLE sandwiches (
    sandwich_size varchar(50),
    price decimal(5,2)
);

CREATE TABLE recipes (
    sandwich_size varchar(50),
    item varchar(50),
    amount int
);

-- 3. Insert the data
INSERT INTO resources (item, amount) VALUES
('bread', 12),
('ham', 18),
('cheese', 24);

INSERT INTO sandwiches (sandwich_size, price) VALUES
('small', 1.75),
('medium', 3.25),
('large', 5.5);

INSERT INTO recipes (sandwich_size, item, amount) VALUES
('small', 'bread', 2),
('small', 'ham', 4),
('small', 'cheese', 4),
('medium', 'bread', 4),
('medium', 'ham', 6),
('medium', 'cheese', 8),
('large', 'bread', 6),
('large', 'ham', 8),
('large', 'cheese', 12);

-- 4. View the data in each table
SELECT * FROM resources;
SELECT * FROM sandwiches;
SELECT * FROM recipes;
