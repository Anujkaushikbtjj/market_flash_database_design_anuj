/*QUERIES TO CREATE TABLE */

CREATE TABLE payment_type (
  payment_type_id VARCHAR (20) PRIMARY KEY ,
  payment_type VARCHAR (20) NOT NULL UNIQUE
  );
  
CREATE TABLE payments (
   payment_id VARCHAR (20) PRIMARY KEY,
   date DATE,
   amount NUMERIC,
   payment_type_id VARCHAR (20),
   details VARCHAR (500),
   campaign_id VARCHAR (20) NOT NULL,
   FOREIGN KEY (payment_type_id) REFERENCES payment_type(payment_type_id),
   FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id)
   );

CREATE TABLE campaign_influencer (
  campaign_influencer_id VARCHAR (20) PRIMARY KEY,
  campaign_id VARCHAR (20) NOT NULL,
  influencer_id VARCHAR (20) NOT NULL,
  FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id),
  FOREIGN KEY (influencer_id) REFERENCES influencers(influencer_id)
  );

CREATE TABLE campaign_employee (
  campaign_employee_id VARCHAR (20) PRIMARY KEY,
  campaign_id VARCHAR (20) NOT NULL,
  employee_id VARCHAR (20) NOT NULL,
  FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
  );
  
CREATE TABLE employees (
  employee_id VARCHAR (20) PRIMARY KEY,
  first_name VARCHAR (20) NOT NULL,
  last_name VARCHAR (20) NOT NULL,
  role VARCHAR (20),
  address VARCHAR (500) NOT NULL,
  phone INTEGER UNIQUE NOT NULL,
  department_id VARCHAR (20) NOT NULL,
  employee_since Date,
  email VARCHAR (50) UNIQUE,
  date_of_birth DATE NOT NULL,
  ssn VARCHAR (20) UNIQUE,
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
  ); 

CREATE TABLE departments (
  department_id VARCHAR (20) PRIMARY KEY ,
  department_name VARCHAR (20) NOT NULL UNIQUE
  );

CREATE TABLE industry (
  industry_id VARCHAR (20) PRIMARY KEY ,
  industry_name VARCHAR (20) NOT NULL UNIQUE
  );

CREATE TABLE influencers (
  influencer_id VARCHAR (20) PRIMARY KEY,
  first_name VARCHAR (20) NOT NULL,
  last_name VARCHAR (20) NOT NULL,
  social_handle VARCHAR (20) NOT NULL UNIQUE,
  follower_count INTEGER,
  address VARCHAR (500) NOT NULL,
  phone INTEGER UNIQUE NOT NULL,
  email VARCHAR (50) NOT NULL UNIQUE,
  date_of_birth DATE,
  ssn VARCHAR (20) UNIQUE
  ); 

CREATE TABLE campaigns (
  campaign_id VARCHAR (20) PRIMARY KEY,
  campaign_name VARCHAR (20) NOT NULL,
  start_date DATETIME NOT NULL,
  end_date DATETIME NOT NULL ,
  budget NUMERIC,
  client_id VARCHAR (20) NOT NULL,
  impressions INTEGER,
  clicks INTEGER,
  engagement VARCHAR (50),
  conversion_rate NUMERIC,
  FOREIGN KEY (client_id) REFERENCES clients(clients_id)
  ); 
  
CREATE TABLE clients (
  client_id VARCHAR (20) PRIMARY KEY,
  client_name VARCHAR (20) NOT NULL,
  contact_details VARCHAR (500) NOT NULL,
  industry_id VARCHAR (20),
  contract_start_date DATE,
  contract_end_date DATE,
  FOREIGN KEY (industry_id) REFERENCES industry (industry_id)
  );

CREATE TABLE media (
  media_type_id VARCHAR (20) PRIMARY KEY ,
  media_type VARCHAR (20) NOT NULL UNIQUE
  );

CREATE TABLE contents (
  content_id VARCHAR (20) PRIMARY KEY,
  title VARCHAR (100) NOT NULL,
  description TEXT,
  media_type_id VARCHAR (20) NOT NULL,
  creation_date DATE,
  campaign_id VARCHAR (20) NOT NULL,
  FOREIGN KEY (media_type_id) REFERENCES media (media_type_id),
  FOREIGN KEY (campaign_id) REFERENCES campaigns (campaign_id)
  );

CREATE TABLE campaign_platform (
  campaign_platform_id VARCHAR (20) PRIMARY KEY,
  campaign_id VARCHAR (20) NOT NULL,
  platform_id VARCHAR (20) NOT NULL,
  FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id),
  FOREIGN KEY (platform_id) REFERENCES platforms(platform_id)
  );

CREATE TABLE platforms (
  platform_id VARCHAR (20) PRIMARY KEY,
  platform_name VARCHAR (20) NOT NULL,
  url VARCHAR (50) NOT NULL UNIQUE,
  contact_person VARCHAR (20),
  phone Integer,
  email VARCHAR (50)
  );

CREATE TABLE advertisements (
  ad_id VARCHAR (20) PRIMARY KEY,
  ad_name VARCHAR (50) NOT NULL,
  content_id VARCHAR (20) NOT NULL,
  duration NUMERIC,
  budget NUMERIC,
  platform_id VARCHAR (20) NOT NULL,
  campaign_id VARCHAR (20) NOT NULL,
  FOREIGN KEY (content_id) REFERENCES contents (content_id),
  FOREIGN KEY (platform_id) REFERENCES platforms (platform_id),
  FOREIGN KEY (campaign_id) REFERENCES campaigns (campaign_id)
  );