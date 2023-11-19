# Danny's 8-Week SQL Challenge

Thanks @DataWithDanny for the excellent SQL case studies! 👋🏻
This SQL project, conducted within the MySQL Workbench 8.0 CE environment, constitutes a pivotal case study curated by Danny's Ma.

Explore further at [8-Week SQL Challenge Website](https://8weeksqlchallenge.com/)

## Table of Contents
- [Case Study #1: Danny's Diner](#case-study-1-dannys-diner)  

## Case Study #1: Danny's Diner
<img src="https://8weeksqlchallenge.com/images/case-study-designs/1.png" alt="Image" width="450" height="450">

[Link to case study](https://8weeksqlchallenge.com/case-study-1/)  

Access the datasets (DDL and DML) used for this case study by clicking [here](https://github.com/suryamageshk/SQL_Danny-8-Week-Challenge/blob/main/DDL_DML.sql).

#### Problem: 
undertake a comprehensive analysis of customer behaviors within the restaurant, with a keen focus on visiting patterns, expenditure, and preferred menu items. 

#### Input Tables:  
1. **Menu Table (menu):**
   - Fields: product_id (Primary Key), product_name, price
   - Description: The menu table contains unique product_id values, each associated with their respective product_name and price.

2. **Members Table (members):**
   - Fields: customer_id (Primary Key), join_date
   - Description: The members table includes records for every customer enrolled in Danny's dinner loyalty program, with customer_id and join_date.

3. **Sales Table (sales):**
   - Fields: customer_id, order_date, product_id (Foreign Key)
   - Description: The sales table records all customer purchases, providing information on order_date and product_id associated with each transaction.

#### Case Study Questions:
<details>
<summary>
Click here to expand!
</summary>

1. What is the total amount each customer spent at the restaurant?
2. How many days has each customer visited the restaurant?  
3. What was the first item from the menu purchased by each customer?  
4. What is the most purchased item on the menu and how many times was it purchased by all customers?  
5. Which item was the most popular for each customer?  
6. Which item was purchased first by the customer after they became a member?  
7. Which item was purchased just before the customer became a member?  
8. What is the total items and amount spent for each member before they became a member?  
9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?  
10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi - how many points do customer A and B have at the end of January?

</details>

#### Action:
These are the particular functions I employed:
- Aggregate Functions - SUM, COUNT
- Joins - Inner Join
- Temp Tables (CTE)
- Date Functions - ADDDATE, EXTRACT
- Window Functions - ROW_NUMBER, OVER

#### Result:
Extracted valuable insights from the analysis, providing a deeper understanding of customer behaviors and preferences within Danny's Diner.
