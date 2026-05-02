SELECT 
    MIN(sale_price) AS cheapest_item,
    MAX(sale_price) AS most_expensive_item,
    AVG(sale_price) AS average_price,
    STDDEV(sale_price) AS price_standard_deviation
FROM `bigquery-public-data.thelook_ecommerce.order_items`;

-- AUDIT FINDING: Minimum price detected at $0.02. 
-- ACTION: Investigating if these are legitimate products or system errors.
