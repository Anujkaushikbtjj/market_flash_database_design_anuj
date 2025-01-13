# MARKET FLASH DATABASE DESIGN

## 1. Description
This project involves designing a database for the Market Flash which specialises in social media campaigns, marketing and performance analysis of clients. Market Flash needs to design a robust database to manage information of their clients, campaigns, advertisements, employees and payments.

![gradient-green-pushpin-map](https://github.com/user-attachments/assets/9cf5fff7-4690-4ce8-835c-f1cfdae0409d)

As part of the project, an Entity-Relationship Diagram (ERD), a functional diagram and SQL queries were written for database design.  
This project was done as part of the Data Analytics course offered by MasterSchool.  

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

  <img width="1002" alt="market_flash_erd" src="https://github.com/user-attachments/assets/36217ca7-0f7f-4ac4-bab4-0e0ccd419286" />

## 3. Functional Diagram
A functional diagram shows how the data flow in Market Flash database. It shows information about the data, primary and foreign keys, datatype and removes redundancy making it easier to access and modify data, if needed.

<img width="1309" alt="market_flash_functional_diagram" src="https://github.com/user-attachments/assets/06cc11a9-c5a9-4c40-aa02-dd9ce66abd49" />

## 4. SQL Scripts

### Creating tables
This script was used to create the database tables with defined data type, primary key, foreign key(s) and constraints.  
- `create_table.sql`: Contains the table creation script.

### Inserting data (dummy)
This script was used to enter dummy data considering the data type, primary key, foreign key(s) and constraints.  
- `insert_dummy_data.sql`: Script to insert sample data.

### Validation
This script was used to validate the database design. Some SQL queries were run to make functional validity. The database was validated for Foreign key(s) relation, Data consistency, Budget and performance analysis, general integrity checks using WHERE clause and JOINS.  
- `validation.sql`: Validation SQL queries.

## 5. Disclaimer  
This project is for educational purposes and is not intended for production use. The author is not responsible for any issues arising from the use of this database design. 

## 6. About the Author  
This project was created by Anuj, a database designer, data analyst and scientist (biologist). 
Feel free to connect via  
LinkedIn:  https://www.linkedin.com/in/anujanujbioanalyst  
Email: anuj.kaushik.btjj@gmail.com  

