## Question:
Presume the table in base_data is hosted in schema 'analytics' i.e. the table location is analytics.base_data and write a query to give the following output:

| division_name    | fillrate | fillrate - open POs | sm-fillrate | hm-fillrate |
|------------------|----------|---------------------|-------------|-------------|
| Grocery Food     |          |                     |             |             |
| Grocery Non Food |          |                     |             |             |
| Staples          |          |                     |             |             |

## Solution:

Query - (https://github.com/Navinachhugani/SQL/blob/main/Purchase%20Order%20Analysis/Solution.sql)

| division_name    | fillrate    | fillrate - open POs | sm-fillrate | hm-fillrate |
|------------------|-------------|---------------------|-------------|-------------|
| Grocery Food     | 16711215.1  | 23576466.2          | 10129328.6  | 6581886.5   |
| Grocery Non Food | 10744135.7  | 14783592.8          | 6577445.6   | 4166690.1   |
| Staples          | 5892905.1   | 10288676.4          | 4047878.8   | 1845026.3   |
