### What Is SQL?
SQL (Structured Query Language) began as a language used to manipulate data in relational databases, it has evolved to be a language for manipulating data across various database technologies.  

SQL goes hand in hand with the relational model because the result of an SQL query is a table (also called a result set). Thus, a new permanent table can be created in a relational database simply by storing the result set of a query. Similarly, a query can use both permanent tables and the result sets from other queries as inputs.  

New features have been added to the SQL language to incorporate object-oriented functionality, among other things. The later standards focus on the integration of related technologies, such as extensible markup language (XML) and JavaScript object notation (JSON). 

### SQL Statement Classes
The SQL language is divided into several distinct parts:  
1. **SQL schema statements:** These are used to define the data structures stored in the database.
2. **SQL data statements:** These are used to manipulate the data structures previously defined using SQL schema statements.
3. **SQL transaction statements:** These are used to begin, end, and roll back transactions.  

For example, to create a new table in your database, you would use the SQL schema statement create table, whereas the process of populating your new table with data would require the SQL data statement insert.  

- Here’s an SQL schema statement that creates a table called corporation:
```sql
CREATE TABLE corporation
(corp_id SMALLINT,
name VARCHAR(30),
CONSTRAINT pk_corporation PRIMARY KEY (corp_id)
);
```
This statement creates a table with two columns, `corp_id` and `name`, with the `corp_id` column identified as the primary key for the table.
