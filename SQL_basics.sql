/* Creating Table */

CREATE TABLE cities(
  name VARCHAR(50), 
  country VARCHAR(50), 
  population INTEGER, 
  area INTEGER
);

/* Insert a row into table */

INSERT INTO cities (name, country, population, area)

VALUES ('Tokyo','Japan', 38505000, 8223);

/* Insert multiple rows into table */

INSERT INTO cities (name, country, population, area)

VALUES 
	('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brazil', 20935000, 3043); 

/* Fetch data of all the columns from the table by using the star(*) symbol*/

SELECT * FROM cities;

/* Fetch data from specific column from the table */

SELECT name, country, population  FROM cities;

/* Can also fetch the data from the same column multiple times */

SELECT country, country, country FROM cities;

/* Applying math operators on data while fetching them and renaming them using "AS" */

SELECT name, population / area AS population_density FROM cities;

SELECT name, population - area AS population_area FROM cities;
