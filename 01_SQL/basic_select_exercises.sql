-- Basic SQL Exercises
-- Date: March 31, 2026
-- Author: tana-analytics

-- Exercise 1: Show only production_date, machine_id, and defect_count
SELECT production_date, machine_id, defect_count
FROM production_log;

-- Exercise 2: Show all data for Machine M02 only
SELECT *
FROM production_log
WHERE machine_id = 'M02';

-- Exercise 3: Show records where defect_count is greater than 50
SELECT *
FROM production_log
WHERE defect_count > 50;

-- Exercise 4: Show all records sorted by total_units from highest to lowest
SELECT *
FROM production_log
ORDER BY total_units DESC;

-- Exercise 5: Show Night shift records for Machine M01 and M03, sorted by defect_count highest to lowest
SELECT *
FROM production_log
WHERE shift = 'Night' 
  AND machine_id IN ('M01', 'M03')
ORDER BY defect_count DESC;
