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

### Day 1 (Mar 31): SQL Exercises - SELECT, WHERE, ORDER BY

**What I Practiced:**
- SELECT with specific columns
- WHERE to filter by machine, shift, and conditions
- ORDER BY to sort results
- Combining multiple conditions with AND and IN

**Exercises Completed:**
1. Selected specific columns (production_date, machine_id, defect_count)
2. Filtered to show only Machine M02
3. Filtered records with defect_count > 50
4. Sorted all records by total_units highest to lowest
5. Combined filters: Night shift, Machines M01 and M03, sorted by defect_count

**Code Uploaded:**
- `01_SQL/basic_select_exercises.sql` — Contains all 5 exercises

**Reflection:**
The logic of SQL is similar to how I mentally filter production issues on the shop floor. 
When I want to investigate a problem, I naturally narrow down by machine, then shift, then look at the worst performers. 
SQL just gives me a structured way to do that with data.

**Challenges:**
- Remembering to use single quotes for text values (e.g., 'Night', 'M03')
- Understanding that ORDER BY DESC puts the largest numbers first

**Next:**
Learn GROUP BY to calculate totals and averages by shift and machine


### Day 2 (Apr 1): GROUP BY & Aggregations

**Concepts Learned:**
- GROUP BY — grouping rows by a column value
- COUNT(*) — counting records in each group
- SUM() — adding up values in a group
- AVG() — calculating averages
- ROUND() — formatting decimal numbers

**Exercises Completed:**
1. Counted records per machine
2. Calculated total downtime by shift
3. Found average units produced per machine
4. Calculated defect rate percentage per machine

**Error Encountered & Fixed:**
- Forgot second argument in ROUND() function
- Added `, 2` to specify 2 decimal places
- Moved closing parenthesis before AS

**Results from Exercise 4:**
- M03: 5.66% defect rate (worst)
- M01: 2.31% defect rate
- M02: 1.16% defect rate (best)

**Files Uploaded:**
- `01_SQL/aggregation_exercises.sql`

**Reflection:**
SQL syntax requires precision — missing parentheses or arguments causes errors. 
This is similar to machine parameters; if one value is missing, the process fails.

**Next Topic:**
Combining WHERE with GROUP BY (filtering before grouping)


### Day 3 (Apr 5): WHERE with GROUP BY (Completed)

**Data Cleaning Lesson:**
- Discovered duplicate rows in my database (54 rows instead of 18)
- Learned that DISTINCT * doesn't work when unique IDs exist
- Cleaned data by excluding the primary key column
- Final clean dataset: 18 rows

**Exercises Completed (Clean Data):**
1. Total defects > 30 per machine: M01=125, M03=405
2. Average Day shift units: M01=1483.3, M02=1600.0, M03=1223.3
3. Night downtime for M01/M02: M01=270 min, M02=75 min
4. Total units for Mar 2-3: M01=5,760, M02=6,200, M03=4,750

**Key Takeaway:**
Always verify your data before analysis. Duplicates can completely change results.

**Files Uploaded:**
- `01_SQL/where_groupby_exercises.sql`


### Day 4 (Apr 5): HAVING — Filtering After Grouping

**Key Difference Learned:**
- WHERE filters rows BEFORE grouping
- HAVING filters groups AFTER aggregation

**Exercises Completed:**
1. Machines with total downtime > 300 min → M03 only
2. Shifts with > 3 downtime events → [Your result]
3. Machines with avg defects > 30 → [Your result]
4. Night shift machines with total units < 4500 → [Your result]

**Files Uploaded:**
- `01_SQL/having_exercises.sql`

**Next Topic:**
Combining WHERE and HAVING in real manufacturing scenarios




