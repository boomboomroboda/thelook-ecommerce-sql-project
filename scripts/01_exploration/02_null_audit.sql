/* TASK: Data Quality Audit (The NULL Hunter)
OBJECTIVE: Identify missing values in critical order columns.
LEARNING: Using COUNT and CASE statements to create a "Quality Dashboard."
*/

SELECT
    COUNT(*) AS total_rows,
    COUNT(order_id) AS non_null_orders,
    -- This next part counts only when the value IS NULL
    SUM(CASE WHEN user_id IS NULL THEN 1 ELSE 0 END) AS missing_user_ids,
    SUM(CASE WHEN status IS NULL THEN 1 ELSE 0 END) AS missing_status,
    SUM(CASE WHEN created_at IS NULL THEN 1 ELSE 0 END) AS missing_timestamps
FROM `bigquery-public-data.thelook_ecommerce.orders`;
