# MARKET FLASH DATABASE DESIGN

## 1. Description
This project involves designing a database for the Market Flash which specialises in social media campaigns, marketing and performance analysis of clients. Market Flash needs to design a robust database to manage information of their clients, campaigns, advertisements, employees and payments.
As part of the project, we create an Entity-Relationship Diagram (ERD), a functional diagram and write SQL queries to create tables and validation of database design.

### Tools used 
For creating ERD and functional diagram web-based diagramming and visualisation tool Lucidchart was used.
For writing SQL queries Beekeper Studio (PostgreSQL) was used.

## 2. Entity-Relationship Diagram (ERD)
The ERD displays the entities in Market Flash database and their relation with each other. Here we use Crow's foot notation to show the relationship among entities.
Information available for the ERD:
- A campaign must have a client and each client may have many campaigns.
- A campaign must be managed by one or more employees and one employee may manage multiple campaigns.
- One campaign must use one or more platforme and a platform may be used by many campaigns.
- One influencer may be hired for one or more campaigns and one campaign may use one or more influencers.
- Each piece of content must belong to one campaign and one campaign must have one or more pieces of content.
- A payment must belong to one and only one campaign and a campaign may have one or more payments.
- One set of metrics must belong to one and only one campaign and one campaign must have one and only one set of metrics.
- One advertisement must belong to one and only one campaign and one campaign must have one or more advertisements.
- One advertisement must belong to one and only one platform and one platform may have one or more advertisements.

  <img width="926" alt="market_flash_erd" src="https://github.com/user-attachments/assets/8128426c-ccf1-482e-ac10-c3211b75bef7" />
  
## 2. Functional Diagram
A functional diagram shows how the data flow in Market Flash database. It shows information about the data, primary and foreign keys, datatype and removes redundancy making it easier to access and modify data, if needed.

<img width="1309" alt="market_flash_functional_diagram" src="https://github.com/user-attachments/assets/06cc11a9-c5a9-4c40-aa02-dd9ce66abd49" />

## 3. SQL Scripts

### Creating tables
This script was used to create the database tables with defined data type, primary key, foreign key(s) and constraints.
- `create_table.sql`: Contains the table creation script.

### Inserting data (dummy)
This script was used to enter dummy data considering the data type, primary key, foreign key(s) and constraints.
- `insert_dummy_data.sql`: Script to insert sample data.

### Validation
This script was used to validate the database design. Some SQL queries were run to make functional validity. The database was validated for Foreign key(s) relation, Data consistency, Budget and performance analysis, general integrity checks using WHERE clause and JOINS.
- `validation.sql`: Validation SQL queries.

