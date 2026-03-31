# Weekly Learning Log

## Week 1 (Mar 30 - Apr 5): GitHub & SQL Foundations

### Status
✅ GitHub account created  
✅ Repository structure established  
⏳ SQL basics - in progress

### What I Learned This Week
- GitHub account setup and repository structure
- Professional README documentation
- SQL basics: SELECT, FROM, WHERE, LIMIT

### Code Snippet of the Week
```sql
-- Example: Basic query structure for production data
SELECT 
    production_date,
    shift,
    total_units,
    defect_count
FROM production_log
WHERE production_date >= '2026-01-01'
ORDER BY production_date DESC;
