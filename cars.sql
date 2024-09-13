CREATE TABLE cars(
Make varchar (100),
Model varchar (100),
Type varchar (100),
Origin varchar (100),
Drive_Train varchar (100),
Length varchar (100)
);

SELECT *
FROM cars

COPY cars 
FROM '/Applications/PostgreSQL 16/cars.csv'
WITH (FORMAT CSV, HEADER TRUE)

--Questions