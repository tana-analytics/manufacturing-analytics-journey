-- Aggregation Exercises with GROUP BY
-- Date: April 1, 2026
-- Author: tana-analytics

-- Exercise 1: Count records for each machine
SELECT 
    machine_id,
    COUNT(*) AS number_of_records
FROM production_log
GROUP BY machine_id;

-- Exercise 2: Total downtime minutes by shift
SELECT 
    shift,
    SUM(downtime_minutes) AS total_downtime_minutes
FROM downtime_events
GROUP BY shift;

-- Exercise 3: Average units produced by machine
SELECT 
    machine_id,
    ROUND(AVG(total_units), 1) AS avg_units_produced
FROM production_log
GROUP BY machine_id;

-- Exercise 4: Defect rate by machine (corrected version)
SELECT 
    machine_id, 
    SUM(total_units) AS total_produced,
    SUM(defect_count) AS total_defects,
    ROUND((SUM(defect_count) / SUM(total_units)) * 100, 2) AS defect_rate_pct
FROM production_log
GROUP BY machine_id
ORDER BY defect_rate_pct DESC;
