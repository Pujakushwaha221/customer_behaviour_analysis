USE customer_behaviour;

SELECT gender,
	 SUM(purchase_amount) AS total_revenue
FROM customers
GROUP BY gender;

SELECT customer_id,
     purchase_amount
FROM customers
WHERE discount_applied='Yes'
and purchase_amount > (SELECT AVG(purchase_amount) FROM customers);

SELECT item_purchased,
      ROUND(AVG(review_rating),2) AS avg_review_rating
FROM customers
GROUP BY item_purchased
ORDER BY avg_review_rating DESC
LIMIT 5;

SELECT shipping_type , ROUND(AVG(purchase_amount),2)AS average_purchase
FROM customers
WHERE lower(shipping_type) IN ('standard','express')
GROUP BY shipping_type;

SELECT  subscription_status ,
        COUNT(customer_id)as total_customers,
        ROUND(AVG(purchase_amount),2)AS average_spent,
        SUM(purchase_amount)AS total_revenue
FROM customers
GROUP BY subscription_status;

SELECT item_purchased,
ROUND((SUM(CASE WHEN discount_applied='Yes' THEN 1 ELSE 0 END)/COUNT(*))*100.0 ,2)AS discount_rate
FROM customers
GROUP BY item_purchased 
ORDER BY purchase_percent desc
LIMIT 5;

WITH customer_category AS (
        SELECT customer_id,previous_purchases,
        CASE WHEN previous_purchases = 1 THEN 'New Customer'
             WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning Customer'
             WHEN previous_purchases >10 THEN 'Loyal Customer'
        END AS customer_segment    
        FROM customers
)SELECT customer_segment,
      COUNT(*) AS num_of_customers
  FROM customer_category
  GROUP BY customer_segment;
  
 WITH product_rank AS ( SELECT category, 
                                item_purchased, COUNT(customer_id)AS total_orders,
								ROW_NUMBER() OVER(PARTITION BY category ORDER BY COUNT(customer_id) DESC )AS item_rnk
  FROM customers
  GROUP BY  category, item_purchased)
  SELECT item_rnk,category,item_purchased,total_orders
  FROM product_rank 
  WHERE item_rnk<=3;
  
  
  SELECT 
        subscription_status,
        COUNT(customer_id)as repeat_buyers
 FROM customers
 WHERE previous_purchases >5
 GROUP BY subscription_status;
 
 SELECT age_group,
	   SUM(purchase_amount)AS total_revenue
FROM customers
GROUP BY age_group
ORDER BY total_revenue DESC;      