-- WHERE with GROUP BY Exercises
-- Date: April 5, 2026
-- Author: tana-analytics
-- Note: Data cleaned to 18 rows (duplicates removed)

-- Exercise 1: Total defects per machine where defect_count > 30
SELECT 
    machine_id,
    SUM(defect_count) AS total_defects_high
FROM production_log
WHERE defect_count > 30
GROUP BY machine_id;

-- Exercise 2: Average units for Day shift only
SELECT 
    machine_id,
    ROUND(AVG(total_units), 1) AS avg_day_units
FROM production_log
WHERE shift = 'Day'
GROUP BY machine_id;

-- Exercise 3: Total downtime for M01 and M02 on Night shift
SELECT 
    machine_id,
    SUM(downtime_minutes) AS night_downtime_total
FROM downtime_events
WHERE shift = 'Night' 
  AND machine_id IN ('M01', 'M02')
GROUP BY machine_id;

-- Exercise 4: Total units for March 2-3 only
SELECT 
    machine_id,
    SUM(total_units) AS total_units
FROM production_log
WHERE production_date IN ('2026-03-02', '2026-03-03')
GROUP BY machine_id;
