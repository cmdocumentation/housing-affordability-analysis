-- QUERY 4: Calculate shelter-cost ratio distribution by age group, immigrant status, and immigration period
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
 
