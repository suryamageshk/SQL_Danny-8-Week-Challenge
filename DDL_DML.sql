-- CASE STUDY #1: THE TASTE OF SUCCESS

-- Table 1: Menu
CREATE TABLE menu (
  product_id INTEGER,
  product_name VARCHAR(5),
  price INTEGER,
  PRIMARY KEY (product_id)
);

INSERT INTO menu
  (product_id, product_name, price)
VALUES
  (1, 'Sushi', 10),
  (2, 'Curry', 15),
  (3, 'Ramen', 12);

-- Table 2: Members
CREATE TABLE members (
  customer_id VARCHAR(1),
  join_date DATE,
  PRIMARY KEY (customer_id)
);

INSERT INTO members
  (customer_id, join_date)
VALUES
  ('A', '2023-01-07'),
  ('B', '2023-01-09'),
  ('C', '2023-01-11');

-- Table 3: Sales
CREATE TABLE sales (
  customer_id VARCHAR(1),
  order_date DATE,
  product_id INTEGER,
  FOREIGN KEY (product_id) REFERENCES menu(product_id)
);

INSERT INTO sales
  (customer_id, order_date, product_id)
VALUES
  ('A', '2023-01-01', 1),
  ('A', '2023-01-01', 2),
  ('A', '2023-01-07', 2),
  ('A', '2023-01-10', 3),
  ('A', '2023-01-11', 3),
  ('A', '2023-01-11', 3),
  ('B', '2023-01-01', 2),
  ('B', '2023-01-02', 2),
  ('B', '2023-01-04', 1),
  ('B', '2023-01-11', 1),
  ('B', '2023-01-16', 3),
  ('B', '2023-02-01', 3),
  ('C', '2023-01-01', 3),
  ('C', '2023-01-01', 3),
  ('C', '2023-01-07', 3);
---------------------------------------------------------------------------------------------------