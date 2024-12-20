CREATE TABLE purchases(customerid INT,productid CHAR,purchases_date Date,Quentity INT,revenue DECIMAL);

INSERT INTO purchases("customerid","productid","purchases_date","quentity","revenue") VALUES (1,'A','01-01-2023',5,100.00);

INSERT INTO purchases("customerid","productid","purchases_date","quentity","revenue") VALUES (2,'B','02-01-2023',3,50.00);

INSERT INTO purchases("customerid","productid","purchases_date","quentity","revenue") VALUES (3,'A','03-01-2023',2,30.00);

INSERT INTO purchases("customerid","productid","purchases_date","quentity","revenue") VALUES (4,'c','03-01-2023',1,20.00);

INSERT INTO purchases("customerid","productid","purchases_date","quentity","revenue") VALUES (1,'B','04-01-2023',4,80.00);


SELECT * FROM purchases;

--output 1

SELECT sum (revenue) AS Total_Revenue FROM purchases;

--output 2

 SELECT Productid,
 SUM(quentity) AS Totalquentity,SUM(revenue) AS TotalSales FROM purchases GROUP BY Productid ORDER BY productid;
 
 --output 3
 
SELECT customerid ,sum(revenue)AS totalrevenue FROM purchases GROUP BY customerid ORDER BY customerid;