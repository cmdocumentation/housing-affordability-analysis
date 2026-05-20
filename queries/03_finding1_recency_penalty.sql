-- QUERY 4: Calculate shelter-cost ratio distribution by age group, immigrant status, and immigration period
-- Purpose: Foundation for Finding 1 - Add immigration period dimension
-- Outputs: Distribution across all burden bands, stratified by arrival cohort
-- Dependency: Requires Query 1 (housing table)
--
-- Key operations:
--   - PARTITION BY (3 columns): Creates separate windows for each combo of age/status/period
--   - Window function recalculates total_in_group for each partition independently
--   - Allows comparison of distributions within smaller cohorts (e.g., 25-34 immigrants, 1980-1990)

SELECT 
  age_group,
  immigrant_status,
  immigration_period,
  shelter_cost_ratio,
  SUM(count_total) AS count_in_band,
  SUM(count_total) OVER (PARTITION BY age_group, immigrant_status, immigration_period) AS total_in_group,
  ROUND(100.0 * SUM(count_total) / SUM(count_total) OVER (PARTITION BY age_group, immigrant_status, immigration_period), 2) AS pct_of_group
FROM housing
GROUP BY age_group, immigrant_status, immigration_period, shelter_cost_ratio
ORDER BY age_group, immigrant_status, immigration_period, 
  CASE shelter_cost_ratio
    WHEN 'Less than 15%' THEN 1
    WHEN '15% to less than 30%' THEN 2
    WHEN '30% to less than 50%' THEN 3
    WHEN '50% to less than 100%' THEN 4
  END;
 
-- QUERY 5: Calculate recency penalty by age group
-- Purpose: Compare immigrants arriving 1980-1990 vs. 2016-2021
-- Shows that burden difference is independent of age
--
-- Key operations:
--   - WHERE immigrant_status = 'Immigrant': Filters to only immigrant rows
--   - WHERE immigration_period IN (...): Isolates two arrival cohorts for comparison
--   - WHERE age_group NOT IN (...): Excludes 20-24 (too few recent arrivals in that band)
--   - Comparison logic: Same age groups across different arrival periods = isolates recency effect

SELECT 
  age_group,
  immigration_period,
  ROUND(100.0 * SUM(CASE 
    WHEN shelter_cost_ratio IN ('30% to less than 50%', '50% to less than 100%') 
    THEN count_total END) / 
    SUM(count_total), 2) AS pct_30_plus_burden,
  SUM(count_total) AS total_count
FROM housing
WHERE immigrant_status = 'Immigrant'
  AND immigration_period IN ('1980 to 1990', '2016 to 2021')
   AND age_group NOT IN ('20 to 24 years')
GROUP BY age_group, immigration_period
ORDER BY 
  CASE age_group
    WHEN '25 to 34 years' THEN 1
    WHEN '35 to 44 years' THEN 2
    WHEN '45 to 54 years' THEN 3
    WHEN '55 to 64 years' THEN 4
    WHEN '65 years and over' THEN 4
  END;
