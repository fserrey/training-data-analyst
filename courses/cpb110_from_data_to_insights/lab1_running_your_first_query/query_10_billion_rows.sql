```sql
-- standardsql
SELECT
  title,
  SUM(views) AS view_count
FROM `bigquery-samples.wikipedia_benchmark.Wiki10B` 
WHERE 
  REGEXP_CONTAINS(title, "G.*o.*o.*g")
GROUP BY title  
ORDER BY view_count DESC
LIMIT 100;
```