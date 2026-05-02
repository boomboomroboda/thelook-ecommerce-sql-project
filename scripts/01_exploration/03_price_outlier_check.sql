SELECT 
    MIN(sale_price) AS cheapest_item,
    MAX(sale_price) AS most_expensive_item,
    AVG(sale_price) AS average_price,
    STDDEV(sale_price) AS price_standard_deviation
FROM `bigquery-public-data.thelook_ecommerce.order_items`;

/* AUDIT LOG:
- Found prices as low as $0.02 and as high as $999.00.
- Investigation (JOIN with products table) confirmed $0.02 items are legitimate low-cost accessories.
- Decision: Do not filter these out; they represent valid micro-transactions.
*/
