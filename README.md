# Market Flash Database Design
## Description
Market Flash is a marketing agency specialising in social media campaigns, marketing, influencers and performance analysis of clients. Market Flash needs to design a robust database to manage information of their clients, campaigns, advertisements, employees, payments etc.

## 1. Entity-Relationship Diagram (ERD)
*The Entity-Relationship Diagram (ERD) displays the entities in Market Flash database and their relation with each other. Here we use Crow's foot notation to show the relationship among entities.
Information available for the ERD:
- A campaign must have a client and each client may have many campaigns.
- A campaign must be managed by one or more employees and one employee may manage multiple campaigns.
- One campaign must use one or more platforme and a platform may be used by many campaigns.
- One influencer may be hired for one or more campaigns and one campaign may use one or more influencers.
- Each piece of content must belong to one campaign and one campaign must have one or more pieces of content.
- A payment must belong to one and only one campaign and a campaign may have one or more payments.
- One set of metrics must belong to one and only one campaign and one campaign must have one and only one set of metrics. - One advertisement must belong to one and only one campaign and one campaign must have one or more advertisements.
- One advertisement must belong to one and only one platform and one platform may have one or more advertisements.

  <img width="926" alt="market_flash_erd" src="https://github.com/user-attachments/assets/8128426c-ccf1-482e-ac10-c3211b75bef7" />
*


## 2. Functional Diagram
*A functional diagram shows how the data flow in Market Flash database. It shows information about the data, datatype and removes redundancy making it easier to access and modify data, if needed.

![market_flash_functional_diagram](https://github.com/user-attachments/assets/23092a6a-aed5-4fac-97f9-43ae21aac026)
*

## 3. SQL Scripts
- `create_tables.sql`: Contains the table creation script.
- `insert_dummy_data.sql`: Script to insert sample data.
- `validation_queries.sql`: Validation SQL queries.

## 4. How to Run
*Instructions for setting up the database and running queries.*
