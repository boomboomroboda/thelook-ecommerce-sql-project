SELECT 
    order_id, 
    COUNT(*) AS occurrence_count
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY order_id
HAVING COUNT(*) > 1;

-- 0 duplicates
-- order_id is a reliable primary key
