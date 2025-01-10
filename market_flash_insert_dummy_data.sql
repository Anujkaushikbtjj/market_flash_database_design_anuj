/*DATA ENTRIES IN EACH TABLE*/

-- Insert data into payment_type
INSERT INTO payment_type 
	VALUES 
		('PT001', 'Bank transfer'),
		('PT002', 'Cash'),
		('PT003', 'Credit/ Debit card'),
		('PT004', 'Paypal'),
		('PT005', 'Other')
	;

-- Insert data into industry
INSERT INTO industry
	VALUES
		('ind001', 'Technology'),
		('ind002', 'Healthcare'),
		('ind003', 'Finance'),
		('ind004', 'Education'),
		('ind005', 'Retail')
   ;

-- Insert data into departments
INSERT INTO Departments 
	VALUES
		('dep001', 'Marketing'),
		('dep002', 'Finance'),
		('dep003', 'Human Resources'),
		('dep004', 'IT'),
		('dep005', 'Sales')
   ;
   
-- Insert data into employees
INSERT INTO employees 
	VALUES
		('emp001', 'John', 'Doe', 'Manager', '123 Elm St', 1234567890, 'dep001', '2020-01-01', 'john.doe@example.com', '1990-05-10', 'SSN001'),
		('emp002', 'Jane', 'Smith', 'Analyst', '456 Oak St', 1234567891, 'dep002', '2019-02-15', 'jane.smith@example.com', '1985-07-22', 'SSN002'),
		('emp003', 'Mike', 'Brown', 'Developer', '789 Pine St', 1234567892, 'dep004', '2021-06-01', 'mike.brown@example.com', '1992-11-30', 'SSN003'),
		('emp004', 'Anna', 'Johnson', 'HR Specialist', '101 Maple St', 1234567893, 'dep003', '2018-03-20', 'anna.johnson@example.com', '1988-09-15', 'SSN004'),
		('emp005', 'Chris', 'Taylor', 'Sales Rep', '202 Birch St', 1234567894, 'dep005', '2022-07-12', 'chris.taylor@example.com', '1995-12-01', 'SSN005')
	;

-- Insert data into media
INSERT INTO media 
	VALUES
		('mt001', 'Image'),
		('mt002', 'Video'),
		('mt003', 'Audio'),
		('mt004', 'Text'),
		('mt005', 'GIF')
   ;

-- Insert data into platforms
INSERT INTO platforms
	VALUES
		('pl001', 'Facebook', 'http://facebook.com', 'Mark', '123456789', 'mark@facebook.com'),
		('pl002', 'Instagram', 'http://instagram.com', 'Jane', '987654321', 'jane@instagram.com'),
		('pl003', 'Twitter', 'http://twitter.com', 'Jack', '456789123', 'jack@twitter.com'),
		('pl004', 'LinkedIn', 'http://linkedin.com', 'Sara', '321654987', 'sara@linkedin.com'),
		('pl005', 'YouTube', 'http://youtube.com', 'Chris', '789123456', 'chris@youtube.com')
   ;

-- Insert data into influencers
INSERT INTO influencers
	VALUES
		('inf001', 'Alice', 'Wonder', '@alicewonder', 100000, '321 Elm St', 9876543210, 'alice.wonder@example.com', '1995-05-01', 'SSN101'),
		('inf002', 'Bob', 'Builder', '@bobbuilder', 50000, '123 Oak St', 9876543211, 'bob.builder@example.com', '1990-10-15', 'SSN102'),
		('inf003', 'Charlie', 'Chaplin', '@charliechap', 150000, '456 Pine St', 9876543212, 'charlie.chap@example.com', '1985-07-07', 'SSN103'),
		('inf004', 'Diana', 'Prince', '@dianaprince', 200000, '789 Maple St', 9876543213, 'diana.prince@example.com', '1992-12-25', 'SSN104'),
		('inf005', 'Eve', 'Smith', '@evesmith', 75000, '202 Birch St', 9876543214, 'eve.smith@example.com', '1998-03-30', 'SSN105')
   ;

-- Insert data into clients
INSERT INTO clients
	VALUES
		('cl001', 'TechCorp', 'techcorp@example.com', 'ind001', '2023-01-01', '2025-01-01'),
		('cl002', 'HealthPlus', 'healthplus@example.com', 'ind002', '2023-06-01', '2025-06-01'),
		('cl003', 'FinancePro', 'financepro@example.com', 'ind003', '2023-03-01', '2025-03-01'),
		('cl004', 'EduLearn', 'edulearn@example.com', 'ind004', '2023-09-01', '2025-09-01'),
		('cl005', 'RetailMart', 'retailmart@example.com', 'ind005', '2023-12-01', '2025-12-01')
	;

-- Insert data into campaigns
INSERT INTO campaigns
	VALUES
		('camp001', 'campaign A', '2025-01-01 10:00:00', '2025-01-31 18:00:00', 10000.00, 'cl001', 100000, 5000, 'High', 0.05),
		('camp002', 'campaign B', '2025-02-01 10:00:00', '2025-02-28 18:00:00', 15000.00, 'cl002', 150000, 7500, 'Moderate', 0.03),
		('camp003', 'campaign C', '2025-03-01 10:00:00', '2025-03-31 18:00:00', 12000.00, 'cl003', 120000, 6000, 'High', 0.04),
		('camp004', 'campaign D', '2025-04-01 10:00:00', '2025-04-30 18:00:00', 8000.00, 'cl004', 80000, 4000, 'Low', 0.02),
		('camp005', 'campaign E', '2025-05-01 10:00:00', '2025-05-31 18:00:00', 20000.00, 'cl005', 200000, 10000, 'Very High', 0.07)
   ;

--Entries in payments table
INSERT INTO payments 
	VALUES
		('P001', '2025-01-01', 1000.50, 'PT001', 'Payment for campaign A', 'camp001'),
		('P002', '2025-01-02', 2000.75, 'PT002', 'Payment for campaign B', 'camp002'),
		('P003', '2025-01-03', 500.00, 'PT003', 'Partial payment for campaign C', 'camp003'),
		('P004', '2025-01-04', 1500.25, 'PT004', 'Payment for campaign D', 'camp004'),
		('P005', '2025-01-05', 2500.00, 'PT005', 'Final payment for campaign E', 'camp005')
	;

-- Insert data into campaign_employee
INSERT INTO campaign_employee
	VALUES
		('ce001', 'camp001', 'emp001'),
		('ce002', 'camp002', 'emp002'),
		('ce003', 'camp003', 'emp003'),
		('ce004', 'camp004', 'emp004'),
		('ce005', 'camp005', 'emp005')
   ;

-- Insert data into campaign_influencer
INSERT INTO campaign_influencer  
	VALUES
		('ci001', 'camp001', 'inf001'),
		('ci002', 'camp002', 'inf002'),
		('ci003', 'camp003', 'inf003'),
		('ci004', 'camp004', 'inf004'),
		('ci005', 'camp005', 'inf005')
	;

-- Insert data into contents
INSERT INTO contents
	VALUES
		('cnt001', 'Promo Image 1', 'Image for Campaign A', 'mt001', '2025-01-01 12:00:00', 'camp001'),
		('cnt002', 'Promo Video 1', 'Video for Campaign B', 'mt002', '2025-02-01 12:00:00', 'camp002'),
		('cnt003', 'Podcast 1', 'Audio for Campaign C', 'mt003', '2025-03-01 12:00:00', 'camp003'),
		('cnt004', 'Article 1', 'Text for Campaign D', 'mt004', '2025-04-01 12:00:00', 'camp004'),
		('cnt005', 'Animated GIF 1', 'GIF for Campaign E', 'mt005', '2025-05-01 12:00:00', 'camp005')
   ;

-- Insert data into campaign_platform
INSERT INTO Campaign_Platform
	VALUES
		('cp001', 'camp001', 'pl001'),
		('cp002', 'camp002', 'pl002'),
		('cp003', 'camp003', 'pl003'),
		('cp004', 'camp004', 'pl004'),
		('cp005', 'camp005', 'pl005')
   ;

-- Insert data into advertisements
INSERT INTO advertisements
	VALUES
		('ad001', 'Ad for Campaign A', 'cnt001', 30, 5000.00, 'pl001', 'camp001'),
		('ad002', 'Ad for Campaign B', 'cnt002', 45, 8000.00, 'pl002', 'camp002'),
		('ad003', 'Ad for Campaign C', 'cnt003', 60, 6000.00, 'pl003', 'camp003'),
		('ad004', 'Ad for Campaign D', 'cnt004', 15, 3000.00, 'pl004', 'camp004'),
		('ad005', 'Ad for Campaign E', 'cnt005', 90, 10000.00, 'pl005', 'camp005')
   ;