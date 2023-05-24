/*Group By-statement groups rows that have 
the same values into summary rows, like "find the number of customers in each country". 
The GROUP BY clause lets you group the rows of a table by a subset of the table's columns.
The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) 
to group the result-set by one or more columns.*/

select officeCode,
       count(*) as employees_in_each_office
from employees
group by officeCode;

SELECT
    reportsTo
    officeCode,
    count(*) as num_emp_atEach_ofc,
    from employees group by reportsTo,officeCode;

/*Group By with Having */
SELECT
    reportsTo
    officeCode,
    count(*) as num_emp_atEach_ofc,
    from employees group by reportsTo,officeCode having count(*)>=3;

 /* Joins - Inner, Left, Right */
 select * from employees;

select * from offices;
/*Inner Join -the INNER JOIN keyword selects records that have matching values in both tables.*/
select
    emp.*, ofc.*
    from employees emp 
    inner join offices ofc on emp.officeCode=ofc.officeCode;

/*Left Join
 The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2).
 The result is 0 records from the right side, if there is no match.
*/

select
    emp.*, ofc.*
    from employees emp 
    left join offices ofc on emp.officeCode=ofc.officeCode;

/*Right Join
 The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1).
 The result is 0 records from the left side, if there is no match.
*/

    select
    emp.*, ofc.*
    from employees emp 
    right join offices ofc on emp.officeCode=ofc.officeCode;