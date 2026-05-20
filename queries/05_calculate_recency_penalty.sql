-- QUERY 5: Calculate recency penalty by age group
-- Purpose: Compare immigrants arriving 1980-1990 vs. 2016-2021
-- Shows that burden difference is independent of age

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
  AND immigration_period IN ('Before 1980', '1980 to 1990', '2016 to 2021')
GROUP BY age_group, immigration_period
ORDER BY 
  CASE age_group
    WHEN '25 to 34 years' THEN 1
    WHEN '35 to 44 years' THEN 2
    WHEN '45 to 54 years' THEN 3
    WHEN '55 to 64 years' THEN 4
  END,
  CASE immigration_period
    WHEN 'Before 1980' THEN 1
    WHEN '1980 to 1990' THEN 2
    WHEN '2016 to 2021' THEN 3
  END;
