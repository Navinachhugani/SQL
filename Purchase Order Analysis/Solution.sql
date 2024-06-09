Create Database Analytics;

Use Analytics;

SHOW CREATE TABLE base_data; 

CREATE TABLE base_data (
   Date date DEFAULT NULL,
   order_no int DEFAULT NULL,
   format varchar(2) DEFAULT NULL,
   division_name varchar(20) DEFAULT NULL,
   orderval double DEFAULT NULL,
   rcvval double DEFAULT NULL);
   
-- Imported tables from CSV

-- Solution query

Select Division_name,
SUM(Orderval) - SUM(Rcvval) as fillrate,
SUM(Case when Date >= "202-10-22" then orderval else 0 end) - SUM(Case when Date >= "2020-10-22" then rcvval else 0 end) as Fillrate_Open_Pos,
SUM(Case when format = "SM" then orderval else 0 end) - SUM(Case when format = "SM" then rcvval else 0 end) as sm_Fillrate,
SUM(Case when format = "HM" then orderval else 0 end) - SUM(Case when format = "HM" then rcvval else 0 end) as hm_Fillrate
From Base_Data
Group by Division_name Order by Division_name;