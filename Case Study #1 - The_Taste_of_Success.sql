-- Questions
-- 1. What is the total amount each customer spent at the restaurant?
SELECT 
  S.customer_id, 
  SUM(M.price) AS Total_Amount 
FROM 
  sales AS S
  INNER JOIN menu AS M ON S.product_id = M.product_id 
GROUP BY 
  S.customer_id;

-- 2. How many days has each customer visited the restaurant?
SELECT 
  S.customer_id, 
  COUNT(*) 
FROM 
  (
    SELECT 
      DISTINCT customer_id, 
      order_date 
    FROM 
      sales
  ) AS S 
GROUP BY 
  S.customer_id;

-- 3. What was the first item from the menu purchased by each customer?
SELECT 
  DISTINCT customer_id, 
  product_name 
FROM 
  (
    SELECT 
      S.customer_id, 
      M.product_name, 
      RANK() OVER(
        PARTITION BY S.customer_id 
        ORDER BY 
          S.order_date
      ) AS Product_Order 
    FROM 
      sales AS S 
      INNER JOIN menu AS M ON S.product_id = M.product_id
  ) SM 
WHERE 
  product_order = 1;

-- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
SELECT 
  customer_id, 
  COUNT(*) AS Time_Purchased 
FROM 
  sales 
WHERE 
  product_id = (
    SELECT 
      product_id 
    FROM 
      sales 
    GROUP BY 
      product_id 
    ORDER BY 
      COUNT(*) DESC 
    LIMIT 
      1
  ) 
GROUP BY 
  customer_id;

-- 5. Which item was the most popular for each customer?
SELECT customer_id, 
-- 6. Which item was purchased first by the customer after they became a member?
-- 7. Which item was purchased just before the customer became a member?
-- 8. What is the total items and amount spent for each member before they became a member?
-- 9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
-- 10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi - how many points do customer A and B have at the end of January?