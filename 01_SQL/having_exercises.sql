-- HAVING Exercises
-- Date: April 5, 2026
-- Author: tana-analytics

-- Exercise 1: Machines with total downtime > 300 minutes
SELECT 
    machine_id,
    SUM(downtime_minutes) AS total_downtime
FROM downtime_events
GROUP BY machine_id
HAVING SUM(downtime_minutes) > 300;

-- Exercise 2: Shifts with more than 3 downtime events
SELECT 
    shift,
    COUNT(*) AS downtime_events
FROM downtime_events
GROUP BY shift
HAVING COUNT(*) > 3;

-- Exercise 3: Machines with average defect count > 30
SELECT 
    machine_id,
    AVG(defect_count) AS avg_defects
FROM production_log
GROUP BY machine_id
HAVING AVG(defect_count) > 30;

-- Exercise 4: Night shift, grouped by machine, total units < 4500
SELECT 
    machine_id,
    SUM(total_units) AS night_total_units
FROM production_log
WHERE shift = 'Night'
GROUP BY machine_id
HAVING SUM(total_units) < 4500;
