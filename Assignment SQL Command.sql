use mavenmovies;

-- Question 1 Identify theq primary keys and foriegn key in mavenmovies db. Discuss the differences.

 -- Primary key : Uniquely identifies records within a table. It can hold unique and not null Values.
 -- Foreign Key : Establishes relationship between tables by referencing the primary key of another table. It can contain null values also.

-- Question 2  List all details of actors.

select *from actor;

-- Question 3 List all customer information from DB.

select *from customer;

-- Question 4 List different countires.

select*from country;
select distinct country from country;

-- Question 5 Display all active customers.

select*from customer;
select first_name , last_name from customer where active = 1;

-- Question 6 List of all rental IDs for customer with ID  1.
select*from rental;
select rental_id, customer_id from rental where customer_id = 1;

-- Question 7 Display all film whose rental duration is greater than 5.

select*from film;
select film_id , title , rental_duration from film where rental_duration >5;

-- Question 8 List the total numner of films whose replacment cost is greater than $15 and less than $20.

select*from film;
select count(*) as total_no_of_film from film where replacement_cost >15 and replacement_cost <20;

-- Question 9 Find the numner of film whose rental rate is less than $1.

select count(*) as no_of_films from film where rental_rate < 1;

-- Question  10 Display the first 10 records from the custoemr table.

select* from  customer limit 10;
 
-- Question 11 Display the first 3 records from the customer table whose first name starts with 'b'.

select * from customer;
select first_name from customer where first_name like "b%" limit 3;

-- Question 12 Display the first name of the first 5 movies which are rated as "G".

select *from film;
select title from film where rating = "G" limit 5;

-- Question 13 Find all customer whose first name start with á'.

select * from customer;
select first_name from customer where first_name like "a%";

-- Question 14 Find all customer whose first name ends with "A".

select * from customer;
select first_name from customer where first_name like "%a";

-- Question 15 Display the list of first 4 cities whgich start and end with "a".

select * from city;
select city from city where city like "a%%a" limit 4;

-- Question 16 Find all customer whose first name have "NI"in any position.

select*from customer;
select first_name from customer where first_name like "%NI%";

-- Question 17 Find all customer whose first name have "r"in the second position.

select * from customer;
select first_name from customer where first_name like "_r%";

-- Question 18  Find all customer whose first name starts with 'a' and atleast 5 character in length.

select*from customer;
select first_name from customer where first_name like "a____%";

-- Question 19 Find all customer whose first name start with a and end with a 

select * from customer;
select first_name from customer where first_name like "a%%a";

-- Question 20 Get the films with pg and pg -13 rating using IN operators

select*from film;
select  title from film where rating in("PG","PG-13");

-- Question 21 Get the film with length between 50 to 100 using between operator;

select * from film;
select title from film where length between  50 and 100;

-- Question 22 Get the top 50 actor using limit operator

select*from actor;
select first_name , last_name from actor limit 50;

-- Question 23 Get the distinct film ids from the inventories table.

select * from inventory;
select distinct film_id from inventory;































































































