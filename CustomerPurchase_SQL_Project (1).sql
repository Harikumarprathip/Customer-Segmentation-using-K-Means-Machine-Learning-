## To Display all from table 
select  * from shopping_table;  

## 1. This shows which payment methods customers use the most ##
SELECT payment_method, COUNT(*) 
FROM shopping_table
GROUP BY payment_method;

## 2. See who spent the most moneyThis lists your customers ranked by their total spending
SELECT customer_id, SUM(Purchase_Amount_USD) 
FROM shopping_table 
GROUP BY customer_id 
ORDER BY SUM(Purchase_Amount_USD) DESC;

 ## Find the average amount spent per payment typeThis helps you see if people spend more when using specific methods (like Credit Card vs. Cash).sql
SELECT payment_method, AVG(Purchase_Amount_USD) 
FROM shopping_table
GROUP BY payment_method;

## Find total revenue from all purchases
SELECT SUM(Purchase_Amount_USD) FROM shopping_table;

## Count total number of orders/transactions
SELECT COUNT(*) FROM shopping_table;

## Find the maximum purchase amount
SELECT MAX(Purchase_Amount_USD) FROM shopping_table;

## Find purchases paid using 'Cash'
SELECT * FROM shopping_table 
WHERE payment_method = 'Cash';

## Find purchases where amount spent is greater than 50
SELECT * FROM shopping_table 
WHERE Purchase_Amount_USD > 50;
