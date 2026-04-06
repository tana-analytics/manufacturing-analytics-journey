-- JOIN Exercises - Week 2, Day 1
-- Date: April 6, 2026
-- Author: tana-analytics

-- ===========================================
-- Exercise 1: INNER JOIN
-- Show production records that have matching downtime records
-- ===========================================
SELECT 
    p.production_date,
    p.shift,
    p.machine_id,
    p.total_units,
    d.downtime_minutes
FROM production_log p
INNER JOIN downtime_events d
    ON p.production_date = d.production_date
    AND p.shift = d.shift
    AND p.machine_id = d.machine_id;

-- ===========================================
-- Exercise 2: LEFT JOIN
-- Show ALL production records, with downtime if available
-- ===========================================
SELECT 
    p.production_date,
    p.shift,
    p.machine_id,
    p.total_units,
    p.defect_count,
    d.downtime_minutes
FROM production_log p
LEFT JOIN downtime_events d
    ON p.production_date = d.production_date
    AND p.shift = d.shift
    AND p.machine_id = d.machine_id
ORDER BY p.machine_id, p.production_date;

-- ===========================================
-- Exercise 3: JOIN with Aggregation (GROUP BY)
-- Show total production and total downtime per machine
-- ===========================================
SELECT 
    p.machine_id,
    SUM(p.total_units) AS total_produced,
    SUM(d.downtime_minutes) AS total_downtime
FROM production_log p
LEFT JOIN downtime_events d
    ON p.machine_id = d.machine_id
    AND p.production_date = d.production_date
    AND p.shift = d.shift
GROUP BY p.machine_id
ORDER BY total_downtime DESC;

-- ===========================================
-- Exercise 4: Critical Thinking Support Query
-- View detailed relationship between downtime and production
-- ===========================================
SELECT 
    p.machine_id,
    p.production_date,
    p.shift,
    p.total_units,
    COALESCE(d.downtime_minutes, 0) AS downtime_minutes
FROM production_log p
LEFT JOIN downtime_events d
    ON p.machine_id = d.machine_id
    AND p.production_date = d.production_date
    AND p.shift = d.shift
ORDER BY p.machine_id, p.production_date, p.shift;
