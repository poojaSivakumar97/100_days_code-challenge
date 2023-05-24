/* DDL -Data Definition Language
CREATE Command.
DROP Command.
ALTER Command.
TRUNCATE Command.
RENAME Command.
*/

/* DROP Command- deletes everything not retrievable , even schema gets deleted*/
DROP database first_demo;
DROP table offices;

/*TRUNCATE Command - deletes the data present inside table not the schema*/
TRUNCATE table offices;

/*ALTER Command - adds, deletes, or modifies columns in a table.*/
ALTER table offices add open_timings VARCHAR(30);

ALTER table employees modify addressLine1 VARCHAR(100);

ALTER table offices
DROP column open_timings;