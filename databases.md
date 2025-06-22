## Introduction to Databases
A ***database*** is a set of related information stored electronically. A telephone book, for example, is a database of the names, phone numbers, and addresses of all people living in a particular region.  

Because of the cumbersome nature of paper databases, some of the first computer applications developed were ***database systems***, which are computerized data storage and retrieval mechanisms.
Because a database system stores data electronically rather than on paper, a database system is able to retrieve data more quickly, index data in multiple ways, and deliver up-to-the-minute information to its user community.

### Heirarchical Database System
A ***hierarchical database system*** is a type of database model that organizes data in a tree-like structure, where each record has a single parent or root, except for the topmost record (the root). This model represents a one-to-many (1:N) relationship between data elements.
#### Key Features of a Hierarchical Database System:
1. **Tree Structure** – Data is arranged in a parent-child hierarchy.
2. **Single Parent Rule** – Each child record has only one parent, but a parent can have multiple children.
3. **Root Node** – The topmost node (root) has no parent.
4. **Pointers for Navigation** – Parent-child relationships are maintained using pointers.
5. **Fast Access for Known Paths** – Efficient for queries that follow the hierarchy.
6. **Limited Flexibility** – Difficult to represent many-to-many (M:N) relationships.
#### Example of a Hierarchical Database:
Consider an organization's structure:
```
Organization (Root)
├── Department: HR
│   ├── Employee: Alice
│   └── Employee: Bob
└── Department: IT
    ├── Employee: Charlie
    └── Employee: Dave
```
- Organization is the root.
- Departments (HR, IT) are children of Organization.
- Employees are children of their respective departments.
#### Advantages:
- Fast data retrieval for hierarchical queries (e.g., "Get all employees under HR").
- Efficient storage for structured data with clear parent-child relationships.
- Simple and predictable for certain use cases (e.g., file systems, organizational charts).
#### Disadvantages:
- Inflexible structure – Hard to modify relationships once defined.
- No support for many-to-many relationships without redundancy.
- Complex queries outside the hierarchy are inefficient.
#### Summary:
Hierarchical databases are efficient for structured, predictable data with clear parent-child relationships but are largely replaced by relational and NoSQL databases for more flexible data modeling. However, they still find use in specific legacy systems and applications where hierarchy is key.

### Network Database System
A ***network database system*** is a database model that extends the hierarchical model by allowing a record to have multiple parent and child records, forming a **graph (network) structure**. This model was designed to represent more complex relationships, particularly many-to-many (M:N) relationships, which are difficult to express in a hierarchical database.
#### Key Features of a Network Database System
- **Graph Structure** – Data is organized as nodes (records) connected by edges (links/pointers).
- **Multiple Parents & Children** – Unlike hierarchical databases, a child can have multiple parents.
- **Owner-Member Relationships** – Records are linked using sets (an owner record and multiple member records).
- **Pointers for Navigation** – Uses physical pointers (addresses) to traverse relationships.
- **Schema Flexibility** – More adaptable than hierarchical but still rigid compared to relational databases.
- **CODASYL Standard** – The Conference on Data Systems Languages (CODASYL) defined the network model in the 1960s–1970s.
#### Example of a Network Database:
Consider a university database with Students, Courses, and Professors:
- A Student can enroll in multiple Courses.
- A Course can be taught by multiple Professors.
- A Professor can teach multiple Courses.  

This creates a network of relationships:
```
Student 1 ──┐
            ├── Course A ─── Professor X
Student 2 ──┘               │
Student 3 ──── Course B ────┘
```
#### Advantages of Network Databases:
- **Efficient for Complex Queries** – Faster than hierarchical for M:N relationships.
- **Reduced Data Redundancy** – Avoids duplication by using pointers.
- **Better Performance for Predefined Paths** – Optimized for known access patterns.
- **More Flexible than Hierarchical** – Supports multiple relationships.
#### Disadvantages of Network Databases:
- **Complexity** – Hard to design and maintain due to pointer-based navigation.
- **Rigid Schema** – Changing relationships requires restructuring.
- **No Ad-Hoc Query Support** – Queries must follow predefined paths.
- **Decline in Popularity** – Largely replaced by relational databases (SQL).
#### Summary:
The network database model was a significant improvement over hierarchical databases, allowing more complex relationships. However, its complexity and lack of flexibility led to its decline in favor of relational databases (SQL) and modern NoSQL systems. Today, it’s mostly found in legacy systems, though some concepts live on in graph databases (Neo4j, ArangoDB).

### Relational Database Management System (RDBMS)
A ***relational database*** is a type of database that stores and organizes data in structured **tables (relations)** consisting of **rows (tuples)** and **columns (attributes)**. It uses **SQL (Structured Query Language)** for defining, querying, and manipulating data while enforcing relationships between tables via **keys**.
#### Key Features of Relational Databases
1. Table-Based Structure
    - Data is stored in tables (e.g., Customers, Orders).
    - Each table has rows (records) and columns (fields).
2. Primary & Foreign Keys
    - Primary Key (PK): Uniquely identifies a row (e.g., customer_id).
    - Foreign Key (FK): Links data between tables (e.g., order.customer_id → customer.id).
3. ACID Compliance
    - Ensures reliable transactions:
        - Atomicity (all or nothing),
        - Consistency (valid transitions),
        - Isolation (transactions don’t interfere),
        - Durability (committed data stays saved).
4. SQL for Queries
    - Standardized language for CRUD operations (e.g., `SELECT`, `INSERT`, `JOIN`).
5. Normalization
    - Minimizes redundancy by splitting data into related tables.
#### Advantages of Relational Databases
- **Data Integrity** – Enforces constraints (e.g., NOT NULL, UNIQUE).
- **Flexible Queries** – Supports complex joins and aggregations.
- **ACID Transactions** – Ensures reliability for banking, healthcare, etc.
- **Scalability (Vertical)** – Can handle large datasets with proper indexing.
- **Standardization (SQL)** – Widely used with strong tooling support.


