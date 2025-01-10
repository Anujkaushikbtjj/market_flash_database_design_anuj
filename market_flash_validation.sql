/*Validations of database design*/

/*Validate Foreign Key Relationships*/

--check if there are any rows in campaign table without a client_id
SELECT 
	*
FROM 
	campaigns
WHERE 
	client_id NOT IN (SELECT client_id FROM clients)
  ;

--check if there are any rows in advertisement table without foreign keys
SELECT 
	*
FROM 
	advertisements
WHERE 
	content_id NOT IN (SELECT content_id FROM contents) OR
  platform_id NOT IN (SELECT platform_id FROM platforms) OR
  campaign_id NOT IN (SELECT campaign_id FROM campaigns)
  ;

--Check if payments have valid campaign IDs
SELECT 
	payment_id, 
  campaign_id
FROM 
	payments
WHERE 
	campaign_id NOT IN (SELECT campaign_id FROM Campaigns)
  ;

/*Analyze Data Consistency*/
--Check if any campaign start date is after the end date
SELECT 
	*
FROM 
	campaigns
WHERE 
	start_date > end_date
  ;

--Check if any client contract overlaps its campaigns
SELECT 
	c.client_id, 
  c.contract_start_date, 
  c.contract_end_date, 
  cmp.campaign_id, 
  cmp.start_date, 
  cmp.end_date
FROM 
	clients c
JOIN 
	campaigns cmp ON c.client_id = cmp.client_id
WHERE 
	cmp.start_date < c.contract_start_date OR 
  cmp.end_date > c.contract_end_date
  ;

/*Budget and Performance Analysis*/
--Find campaigns with a budget exceeding $10,000
SELECT 
	campaign_id, 
  campaign_name, 
   budget
FROM 
	campaigns
WHERE 
	budget > 10000
  ;
  
--Calculate the cost per impression for each campaign
SELECT 
	campaign_id, 
  campaign_name, 
  budget, 
  impressions, 
  CASE 
      WHEN impressions > 0 THEN budget / impressions 
      ELSE NULL 
  END AS cost_per_impression
FROM 
	campaigns
  ;

/*Payments Analysis*/
--Get total payments made for each campaign
SELECT 
	campaign_id, 
  SUM(amount) AS total_payment
FROM 
	payments
GROUP BY 
	campaign_id
  ;

--Find campaigns with no payments recorded
SELECT 
	campaign_id, 
  campaign_name
FROM 
	campaigns
WHERE 
	campaign_id NOT IN (SELECT DISTINCT campaign_id FROM payments)
  ;

/* Employee-Campaign Relationships */
--Find campaigns with no assigned employees
SELECT 
	campaign_id, 
  campaign_name
FROM 
	campaigns
WHERE 
	campaign_id NOT IN (SELECT DISTINCT campaign_id FROM Campaign_Employee)
  ;

--List all employees working on Campaign A
SELECT 
	e.employee_id, 
  e.first_name, 
  e.last_name, 
  e.role
FROM 
	employees e
JOIN 
	campaign_employee ce ON e.employee_id = ce.employee_id
JOIN 
	campaigns c ON ce.campaign_id = c.campaign_id
WHERE 
	c.campaign_name = 'Campaign A'
  ;

/* Influencer and Platform Usage */
--Find influencers working on multiple campaigns
SELECT 
	influencer_id, 
  COUNT(campaign_id) AS campaign_count
FROM 
	campaign_influencer
GROUP BY 
	influencer_id
HAVING 
	COUNT(campaign_id) > 1
  ;

--List all platforms used by a specific campaign (e.g., Campaign A)
SELECT 
	p.platform_name, 
  p.url
FROM 
	platforms p
JOIN 
	campaign_platform cp ON p.platform_id = cp.platform_id
JOIN 
	campaigns c ON cp.campaign_id = c.campaign_id
WHERE 
	c.campaign_name = 'Campaign A'
  ;

/*General Integrity Checks*/
--Check for duplicate emails in the employees or clients table
SELECT 
	email, 
  COUNT(*)
FROM (
    SELECT email FROM employees
    UNION ALL
    SELECT contact_details AS email FROM clients
) AS combined_emails
GROUP BY 
	email
HAVING 
	COUNT(*) > 1
  ;

--Verify that all advertisements reference valid content
SELECT 
	ad_id, 
  content_id
FROM 
	advertisements
WHERE 
	content_id NOT IN (SELECT content_id FROM contents)
  ;


















