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

- Here’s an SQL schema statement that creates a table called `corporation`:
```sql
CREATE TABLE corporation
(corp_id SMALLINT,
name VARCHAR(30),
CONSTRAINT pk_corporation PRIMARY KEY (corp_id)
);
```
This statement creates a table with two columns, `corp_id` and `name`, with the `corp_id` column identified as the primary key for the table.

- Here’s an SQL data statement that inserts a row into the `corporation` table for Acme Paper Corporation:
```sql
INSERT INTO corporation (corp_id, name)
VALUES (27, 'Acme Paper Corporation');
```
This statement adds a row to the `corporation` table with a value of `27` for the `corp_id` column and a value of 'Acme Paper Corporation' for the `name` column.

- Finally, here’s a simple select statement to retrieve the data that was just created:
```sql
SELECT name
FROM corporation
WHERE corp_id = 27;
```
**NOTE:**  
All database elements created via SQL schema statements are stored in a special set of tables called the **data dictionary**. This “data about the database” is known collectively
as ***metadata***.

### SQL: A Nonprocedural Language
A procedural language defines both the desired results and the mechanism, or process, by which the results are generated. **Nonprocedural languages** also define the desired results, but the process by which the results are generated is left to an external agent.  

SQL statements define the necessary inputs and outputs, but the manner in which a statement is executed is left to a component of your database engine known as the ***optimizer***. The optimizer’s job is to look at your SQL statements and, taking into account how your tables are configured and what indexes are available, decide the most efficient execution path.  

Therefore, with SQL, you will not be able to write complete applications. Unless you are writing a simple script to manipulate certain data, you will need to integrate SQL with your favorite programming language.

Some database vendors have done this for you, such as Oracle’s PL/SQL language, MySQL’s stored procedure language, and Microsoft’s Transact-SQL language. With these languages, the SQL data statements are part of the language’s grammar, allowing you to seamlessly integrate database queries with procedural commands.  

If you are using a non-database-specific language such as Java or Python, however, you will need to use a toolkit/API to execute SQL statements from your code. Some of these toolkits are provided by your database vendor, whereas others have been created by third-party vendors or by open source providers.

**NOTE:**  
- Most SQL implementations treat any text between the /* and */ tags as comments.
- When constructing your query, your first task is generally to determine which table or tables will be needed and then add them to your from clause. Next, you will need to add conditions to your where clause to filter out the data from these tables that you aren’t interested in. Finally, you will decide which columns from the different tables need to be retrieved and add them to your select clause.
- Along with querying your database, you will most likely be involved with populating and modifying the data in your database. Here’s a simple example of how you would insert a new row into the product table:
```sql
INSERT INTO product (product_cd, name)
VALUES ('CD', 'Certificate of Depysit')
```
Whoops, looks like you misspelled “Deposit.” No problem. You can clean that up with an update statement:
```sql
UPDATE product
SET name = 'Certificate of Deposit'
WHERE product_cd = 'CD';
```
Notice that the update statement also contains a where clause, just like the select statement. This is because an update statement must identify the rows to be modified; in this case, you are specifying that only those rows whose product_cd column matches the string 'CD' should be modified.
