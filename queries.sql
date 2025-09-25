
-- Basic extraction examples using (SELECT,WHERE,ORDER BY,LIMIT,GROUP BY,COUNT,AVG)

-- 1. Show the name and price of all products.
SELECT name, price FROM products;


-- 2. Show all products where the category is 'Electronics'.
SELECT * FROM products WHERE category = 'Electronics';


-- 3. Group products by category. Show each category once.
SELECT category FROM products GROUP BY category;


-- 4. Show categories that have more than 1 product.
SELECT category, COUNT(*) FROM products
GROUP BY category
HAVING COUNT(*) > 1;


-- 5. Show all products sorted by price in ascending order.
SELECT * FROM products ORDER BY price ASC;


-- 6. Show only the first 3 products from the table.
SELECT * FROM products LIMIT 3;


-- 7. Show the name and price top 5 highest range products from the table.
SELECT name , price FROM products
ORDER BY price DESC
LIMIT 5;


-- 8. Find the average price of products that belong to 'Home & Kitchen' or 'Fitness'.
SELECT category, AVG(price) AS avg_price
FROM products
WHERE category IN ('Home & Kitchen', 'Fitness')
GROUP BY category;


-- 9. Show all the unique categories from the products table.
SELECT DISTINCT category FROM products;



-- LIKE examples (pattern matching)

-- L1: Names that start with 'B'
SELECT * FROM products WHERE name LIKE 'B%';


-- L2: Names that end with 'Lamp'
SELECT * FROM products WHERE name LIKE '%Lamp';


-- L3: Names that contain 'Set'
SELECT * FROM products WHERE name LIKE '%Set%';


-- L4: SKU that starts with 'W'
SELECT * FROM products WHERE sku_code LIKE 'W%';


-- L5: Names with exactly 5 characters
SELECT * FROM products WHERE name LIKE '_____';


-- IN examples (list membership)

-- 1: Electronics or Accessories
SELECT * FROM products WHERE category IN ('Electronics', 'Accessories');


-- 2: stock_quantity in (20,40,100)
SELECT * FROM products WHERE stock_quantity IN (20, 40, 100);


-- 3: product_id in (1,3,5,7)
SELECT name, price FROM products WHERE product_id IN (1, 3, 5, 7);


-- 4: NOT IN example
SELECT * FROM products WHERE category NOT IN ('Stationery', 'Fitness');



-- BETWEEN examples (ranges)

-- 1: price between 200 and 800
SELECT * FROM products WHERE price BETWEEN 200 AND 800;


-- 2: stock between 30 and 80
SELECT * FROM products WHERE stock_quantity BETWEEN 30 AND 80;


-- 3: products added in a date range (adjust dates as needed)
SELECT * FROM products WHERE added_on BETWEEN '2025-09-01' AND '2025-09-30';


-- 4: product_id between 5 and 9
SELECT * FROM products WHERE product_id BETWEEN 5 AND 9;


-- 5: price NOT between 100 and 500
SELECT * FROM products WHERE price NOT BETWEEN 100 AND 500;



-- AND examples (conjunction)

-- 1: Electronics AND price > 1000
SELECT * FROM products WHERE category = 'Electronics' AND price > 1000;


-- 2: Fitness AND stock_quantity >= 50
SELECT * FROM products WHERE category = 'Fitness' AND stock_quantity >= 50;


-- 3: price > 500 AND stock_quantity < 30
SELECT * FROM products WHERE price > 500 AND stock_quantity < 30;


-- 4: Stationery AND is_available = TRUE
SELECT * FROM products WHERE category = 'Stationery' AND is_available = TRUE;



-- OR examples (disjunction)

-- 1: Electronics OR price > 1000
SELECT * FROM products WHERE category = 'Electronics' OR price > 1000;


-- 2: stock < 20 OR price > 1000
SELECT * FROM products WHERE stock_quantity < 20 OR price > 1000;


-- 3: Stationery OR Home & Kitchen
SELECT * FROM products WHERE category = 'Stationery' OR category = 'Home & Kitchen';


-- 4: is_available = FALSE OR stock_quantity = 0
SELECT * FROM products WHERE is_available = FALSE OR stock_quantity = 0;


-- 5: name LIKE '%Lamp' OR name LIKE '%Mug'
SELECT * FROM products WHERE name LIKE '%Lamp' OR name LIKE '%Mug';
