select
min(created_at) as earliest_order,
max(created_at) as latest_order,
timestamp_diff(max(created_at), min(created_at), day) as total_days_of_data
from `bigquery-public-data.thelook_ecommerce.orders`;
