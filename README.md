# Danny's 8-Week SQL Challenge

This SQL project, conducted within the MySQL Workbench 8.0 CE environment, constitutes a pivotal case study curated by Danny's Ma.

Explore further at [8-Week SQL Challenge Website](https://8weeksqlchallenge.com/)

**Case Study #1 -  The Taste Of Success**

Access the datasets (DDL and DML) used for this case study by clicking [here](https://github.com/suryamageshk/SQL_Danny-8-Week-Challenge/blob/main/DDL_DML.sql).

**Objective:** ndertake a comprehensive analysis of customer behavior within the restaurant, with a keen focus on visiting patterns, expenditure, and preferred menu items. 

**Input Tables:**  
1. **Menu Table (menu):**
   - Fields: product_id (Primary Key), product_name, price
   - Description: The menu table contains unique product_id values, each associated with their respective product_name and price.

2. **Members Table (members):**
   - Fields: customer_id (Primary Key), join_date
   - Description: The members table includes records for every customer enrolled in Danny's dinner loyalty program, with customer_id and join_date.

3. **Sales Table (sales):**
   - Fields: customer_id (Foreign Key), order_date, product_id (Foreign Key)
   - Description: The sales table records all customer purchases, providing information on order_date and product_id associated with each transaction.

**Questions**
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

**Action:** Employed SQL techniques including SUM, COUNT, ROW_NUMBER, JOINs, CTEs, and Window Functions for customer analysis.

**Result:** Extracted valuable insights from the analysis.
