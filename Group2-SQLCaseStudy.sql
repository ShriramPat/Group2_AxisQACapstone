CREATE TABLE Group2_axisbank_customers
(Customer_id int,
CustomerName varchar(45),
Credit_limit int,
CreditCard_issued varchar(45),
kyc_status varchar(45),
Expiry_date int,
Account_balance int);

SELECT * FROM Group2_axisbank_customers;

INSERT INTO Group2_axisbank_customers (Customer_id, CustomerName, Credit_limit, CreditCard_issued, kyc_status, Expiry_date, Account_balance) 
VALUES 
(101, 'Sourabh Desai', 80000, 'yes', 'done', 2025, 500000),
(102, 'Manish Dalvi', 90000, 'yes', 'done', 2026, 450000),
(103, 'Aniket Singh', 45000, 'no', 'pending', NULL , 100000),
(104, 'Bhushan goud', 50000, 'yes', 'done', 2024, 350000),
(105, 'Akshay Ujal', 85000, 'yes', 'done', 2027, 600000),
(106, 'Sima Mishra', 40000, 'no', 'pending', NULL, 450000),
(107, 'Sahil Khan', 65000, 'yes', 'done', 2026, 350000),
(108, 'Namrata Patil', 35000, 'no', 'pending', NULL, 550000),
(109, 'Gaurav More', 60000, 'no', 'penidng', NULL, 350000),
(110, 'Raj Shinde', 75000, 'yes', 'done', 2027, 650000),
(111, 'Nidhi Parab', 95000, 'yes', 'done', 2025, 500000),
(112, 'Pritish Jain', 50000, 'no', 'done', NULL, 400000),
(113, 'Yash More', 35000, 'no', 'pending', NULL, 350000),
(114, 'Aditya Mishra', 55000, 'yes', 'done', 2028, 540000),
(115, 'Om Singh', 45000, 'no', 'pending', NULL, 350000),
(116, 'Suraj Kadam', 70000, 'yes', 'done', 2025, 450000),
(117, 'Samay Raina', 55000, 'yes', 'done', 2028, 500000),
(118, 'Ashish Suranje', 45000, 'no', 'done', NULL, 500000),
(119, 'Samir kokane', 80000, 'yes', 'done', 2025, 650000),
(120, 'Rakesh Desai', 55000, 'yes', 'done', 2027, 500000);


ALTER TABLE Group2_axisbank_customers
ADD States varchar(50);

UPDATE Group2_axisbank_customers SET States = 'Maharashtra' WHERE Customer_id = '101';
UPDATE Group2_axisbank_customers SET States = 'Maharashtra' WHERE Customer_id = '102';
UPDATE Group2_axisbank_customers SET States = 'Punjab' WHERE Customer_id = '103';
UPDATE Group2_axisbank_customers SET States = 'Madhya Pradesh' WHERE Customer_id= '104';
UPDATE Group2_axisbank_customers SET States = 'Goa' WHERE Customer_id = '105';
UPDATE Group2_axisbank_customers SET States = 'Bihar' WHERE Customer_id = '106';
UPDATE Group2_axisbank_customers SET States = 'Andhra Pradesh' WHERE Customer_id = '107';
UPDATE Group2_axisbank_customers SET States = 'Maharashtra' WHERE Customer_id = '108';
UPDATE Group2_axisbank_customers SET States = 'Madhya Pradesh' WHERE Customer_id = '109';
UPDATE Group2_axisbank_customers SET States = 'Karnataka' WHERE Customer_id = '110';
UPDATE Group2_axisbank_customers SET States = 'Maharashtra' WHERE Customer_id = '111';
UPDATE Group2_axisbank_customers SET States = 'Gujarat' WHERE Customer_id = '112';
UPDATE Group2_axisbank_customers SET States = 'Madhya Pradesh' WHERE Customer_id = '113';
UPDATE Group2_axisbank_customers SET States = 'Bihar' WHERE Customer_id = '114';
UPDATE Group2_axisbank_customers SET States = 'Bihar' WHERE Customer_id = '115';
UPDATE Group2_axisbank_customers SET States = 'Maharashtra' WHERE Customer_id = '116';
UPDATE Group2_axisbank_customers SET States = 'Andhra Pradesh' WHERE Customer_id = '117';
UPDATE Group2_axisbank_customers SET States = 'Madhya Pradesh' WHERE Customer_id = '118';
UPDATE Group2_axisbank_customers SET States = 'Maharashtra' WHERE Customer_id = '119';
UPDATE Group2_axisbank_customers SET States = 'Andhra Pradesh' WHERE Customer_id = '120';

SELECT Customer_id, CustomerName 
FROM Group2_axisbank_customers 
WHERE kyc_status = 'done';

SELECT Customer_id,CustomerName,Account_balance
FROM Group2_axisbank_customers
WHERE kyc_status = 'done';

SELECT AVG(Credit_limit) AS AvgCredit_limit
FROM Group2_axisbank_customers
WHERE States = 'Maharashtra';



SELECT Customer_id, CustomerName, Credit_limit FROM Group2_axisbank_customers
WHERE Credit_limit>45000;


 SELECT CustomerName, Credit_limit
    FROM Group2_axisbank_customers
    WHERE Expiry_date > 2025 AND Credit_limit>50000;
