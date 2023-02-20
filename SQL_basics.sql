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

/* Concat strings together using || (key above ENTER key) */

SELECT name || country AS country_city FROM cities;

/* To separate two strings with a comma with concatnating them */

SELECT name || ', ' || country AS country_city FROM cities;

/* Using concat function to concat instead */

SELECT CONCAT(name,', ', country) AS origin FROM cities;

/* Add UPPER function to Uppercase country */

SELECT CONCAT(name, ', ', UPPER(country)) AS origin FROM cities;

/* Filter data where the area column is greater than 4000 */

SELECT name, area FROM cities WHERE area > 4000; 

/* Order in query reads the line above: FROM cities -> WHERE area > 4000 -> SELECT name,area */

/* Can also filter by defining the column's value */

SELECT name, area FROM cities WHERE country = 'Japan';

/* Not equals to the value defined */

SELECT name, area FROM cities WHERE country != 'Japan';

/* Same function as the line above (<> = !=))*/

SELECT name, area FROM cities WHERE country <> 'Japan';

/* Using BETWEEN to filter data */

SELECT name, area FROM cities WHERE area BETWEEN 2000 AND 4000;

/* Check if value in a list */

SELECT name, area FROM cities WHERE name IN ('Delhi','Tokyo');

/* Check if value not in a list */

SELECT name, area FROM cities WHERE name NOT IN ('Delhi','Tokyo');

/* Multiple condition filtering both conditions must be true */

SELECT name, area FROM cities WHERE name NOT IN ('Delhi') AND area > 6000;

/* Multiple condition filtering, only one condition must be true */

SELECT name, area FROM cities WHERE name NOT IN ('Delhi') or area > 6000;

/* Use WHERE filtering and mathematical operations together */

SELECT name, population FROM cities WHERE population / area > 5000;

/* Updating data in the table */

UPDATE cities SET population= 45000000 WHERE name = 'Tokyo';

/* Delete row from table */

DELETE FROM cities WHERE name = 'Tokyo';

/* Creating table with unique ID as Primary key */

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  username VARCHAR(50)
);

/* Create table with primary and foregin key to reference row based on a column name from another table */

CREATE TABLE food (
  id SERIAL PRIMARY KEY,
  food_name VARCHAR(200)
  user_id INTEGER REFERENCES users(id)
);

