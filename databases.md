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
