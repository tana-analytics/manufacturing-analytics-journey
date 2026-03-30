# Weekly Learning Log

## Week 1 (Mar 30 - Apr 5): GitHub & SQL Foundations

### What I Learned This Week
- GitHub account setup and repository structure
- SQL basics: SELECT, FROM, WHERE, LIMIT
- Filtering data to answer specific business questions

### Code Snippet of the Week
```sql
-- Example: Finding shifts with production below target
SELECT 
    shift_id,
    production_date,
    total_units,
    target_units
FROM production_log
WHERE total_units < target_units
ORDER BY production_date DESC;
