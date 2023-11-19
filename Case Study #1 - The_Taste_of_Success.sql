USE project;
-- Questions
-- 1. What is the total amount each customer spent at the restaurant?
SELECT
  S.customer_id, 
  SUM(M.price) AS total_spent 
FROM 
  sales AS S
  INNER JOIN menu AS M ON S.product_id = M.product_id 
GROUP BY 
  S.customer_id;

-- 2. How many days has each customer visited the restaurant?
SELECT 
  customer_id, 
  COUNT(DISTINCT order_date) AS days_visited
FROM 
  sales 
GROUP BY 
  customer_id;

-- 3. What was the first item from the menu purchased by each customer?
WITH cte AS (
  SELECT 
    S.customer_id, 
    S.order_date, 
    M.product_name, 
    ROW_NUMBER() OVER( 
		PARTITION BY S.customer_id ORDER BY S.order_date ASC) AS rn 
  FROM 
    sales AS S 
    INNER JOIN menu AS M ON S.product_id = M.product_id
) 
SELECT 
  customer_id, 
  product_name 
FROM 
  cte 
WHERE 
  rn = 1;

-- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
SELECT 
  M.product_name, 
  COUNT(S.order_date) AS times_purchased 
FROM 
  sales AS S 
  INNER JOIN menu AS M ON S.product_id = M.product_id 
GROUP BY 
  M.product_name 
ORDER BY 
  COUNT(S.order_date) DESC 
LIMIT 1;
  
-- 5. Which item was the most popular for each customer?
WITH cte AS (
  SELECT 
    S.customer_id, 
    M.product_name,
    ROW_NUMBER() OVER(
      PARTITION BY S.customer_id ORDER BY COUNT(S.order_date) DESC) AS rn 
  FROM 
    sales AS S 
    INNER JOIN menu AS M ON S.product_id = M.product_id 
  GROUP BY 
    S.customer_id, 
    M.product_name
) 
SELECT 
  customer_id, 
  product_name 
FROM 
  cte 
WHERE 
  rn = 1;

-- 6. Which item was purchased first by the customer after they became a member?
SELECT 
    S.customer_id, 
    S.order_date, 
    MS.join_date,
    M.product_name, 
    ROW_NUMBER() OVER( 
		PARTITION BY S.customer_id ORDER BY S.order_date ASC) AS rn 
  FROM 
    sales AS S 
    INNER JOIN menu AS M ON S.product_id = M.product_id
    INNER JOIN members AS MS ON MS.customer_id = S.customer_id
WHERE CONVERT(S.order_date, DATE) >= CONVERT(MS.join_date, DATE);


-- 7. Which item was purchased just before the customer became a member?
-- 8. What is the total items and amount spent for each member before they became a member?
-- 9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
-- 10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi - how many points do customer A and B have at the end of January?