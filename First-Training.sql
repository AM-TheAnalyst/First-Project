
SELECT * FROM actor;
SELECT actor_id FROM actor;
SELECT actor_id FROM actor WHERE actor_id>92;
SELECT * FROM film;
SELECT title FROM film category;
-- not sure SELECT f.film_id, a.actor_id, a.first_name, a.last_name FROM actor a  LEFT JOIN film f ON a.film_id= actor_id 
SELECT * FROM inventory;
SELECT i.inventory_id, i.store_id, f.title FROM inventory i RIGHT JOIN film f ON i.film_id=f.film_id;
select * from country;
-- NOT CREATE PROCEDURE  SelectAllCountries 

DESCRIBE Country;
ALTER TABLE Country DROP COLUMN City;
ALTER TABLE country ADD COLUMN Capital varchar(255);
ALTER TABLE country MODIFY COLUMN Capital varchar(50);
ALTER TABLE country RENAME COLUMN Capital to State;

SELECT * FROM customer;
SELECT concat(first_name,' ', last_name) FROM customer;
SELECT first_name, LENGTH(first_name) FROM customer;

SELECT TRIM('       mainframe    ') AS shortened;
SELECT UPPER(first_name), first_name, last_name FROM customer;
SELECT LOWER(first_name), first_name, last_name FROM customer;

SELECT last_name, first_name, REPLACE(first_name, 'M','Q')FROM customer;

SELECT first_name, LOCATE('LI',first_name) FROM customer;

SELECT first_name, RIGHT(first_name,2) FROM customer;
SELECT first_name, LEFT(first_name,1) FROM customer;
SELECT concat(first_name,'(', LEFT(first_name,1),')') FROM Customer;
SELECT first_name, substring(first_name,2,4) AS Lastlast FROM customer;

-- Machine learning. Just testing out the use of comments

SELECT *FROM inventory;
select * from payment;

SELECT payment_id, customer_id, amount, 
CASE 
	WHEN amount >2.5.00 THEN 'good purchase'
    WHEN amount <2.5.00 THEN 'neutral'
END AS Purchases,
CASE
	WHEN customer_id >2 THEN 'new client'
END AS Client
	FROM payment;


