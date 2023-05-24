/*DML -Data Manipulation Language
SELECT Command.
INSERT Command.
UPDATE Command.
DELETE Command.*/

/*Select Command - All column, few columns, column alias, Distinct, Limit*/

SELECT * from employees;

SELECT emp_id,officeCode,first_name,last_name from employees;

/*column alias*/
SELECT emp_id as employee_number from employees;

/*Distinct*/
SELECT DISTINCT reportsTo from employees;
SELECT DISTINCT country from offices;

/*Limit*/
SELECT * from employees Limit 3;
select officeCode, 
       city,
	   postalCode as zipCode
from offices limit 3;


/*Select Command with inbuilt functions - count, min, max */

SELECT count(*) as emp_count,
        min(emp_id) as min_emp_id,
        max(emp_id) as max_emp_id
        from employees;


/*Order By Clause */

select * from employees order by officeCode;
select * from employees order by officeCode desc;

select * from employees order by country, salary desc;

/* Where Clause - AND, OR, Like, IN, IS NULL, IS NOT NULL */

SELECT * from employees Where reportsTo='1102'

SELECT * from employees Where reportsTo='1102' or officeCode='2';

/* matches with Sales present anywhere in the value */
SELECT * from employees where jobTitle='%Sales%';

/* exactly looks for fname with 4 characters only*/
SELECT * from employees where first_name='_____'

/* matches with Sales present in the starting value followed by anything*/
SELECT * from employees where jobTitle='Sales%';

/* matches with Sales present in the starting value followed by anything*/
SELECT * from employees where jobTitle='Sales%';

/* matches with officeCode having value of either 1 or 6*/
select * from employees where officeCode in ('1','6');

select * from offices where state is null;

select * from offices where state is not null;

/*Update Command */

SET sql_safe_updates=0;
UPDATE employees set jobTitle='Sales Representative' where jobTitle='Sales Rep';
SET sql_safe_updates=1;

select * from employees;

/*Delete Command */
 DELETE from employees where officeCode='1';
 select * from employees;