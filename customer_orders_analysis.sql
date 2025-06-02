-- customers table
CREATE TABLE customers (
  id INT,
  first_name TEXT,
  last_name TEXT,
  state TEXT
);

INSERT INTO customers VALUES
(1, 'Alice', 'Jones', 'CA'),
(2, 'Bob', 'Smith', 'NY'),
(3, 'Carol', 'White', 'CA'),
(4, 'Dan', 'Brown', 'TX'),
(5, 'Eve', 'Davis', 'NY');

-- orders table
CREATE TABLE orders (
  id INT,
  customer_id INT,
  total_amt_usd DECIMAL
);

INSERT INTO orders VALUES
(1, 1, 120.50),
(2, 1, 250.00),
(3, 2, 320.00),
(4, 4, 150.00),
(5, 5, 80.00);


SELECT c.first_name, c.last_name, SUM(o.total_amt_usd) AS total_spent
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.first_name, c.last_name
ORDER BY total_spent DESC;
