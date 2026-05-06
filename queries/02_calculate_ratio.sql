-- QUERY 2: Calculate shelter-cost ratio distribution by age group and immigrant status
-- Purpose: Show percentage breakdown of housing affordability burden for comparative analysis

SELECT 
  age_group,
  immigrant_status,
  shelter_cost_ratio,
  SUM(count_total) AS count_in_band,
  SUM(ci_lower_bound) AS ci_lower_count,
  SUM(ci_upper_bound) AS ci_upper_count,
  SUM(SUM(count_total)) OVER (PARTITION BY age_group, immigrant_status) AS total_in_group,
  ROUND(100.0 * SUM(count_total) / SUM(SUM(count_total)) OVER (PARTITION BY age_group, immigrant_status), 2) AS pct_of_group,
  ROUND(100.0 * SUM(ci_lower_bound) / SUM(SUM(count_total)) OVER (PARTITION BY age_group, immigrant_status), 2) AS ci_lower_pct,
  ROUND(100.0 * SUM(ci_upper_bound) / SUM(SUM(count_total)) OVER (PARTITION BY age_group, immigrant_status), 2) AS ci_upper_pct
FROM housing
GROUP BY age_group, immigrant_status, shelter_cost_ratio
ORDER BY age_group, immigrant_status, 
  CASE shelter_cost_ratio
    WHEN 'Less than 15%' THEN 1
    WHEN '15% to less than 30%' THEN 2
    WHEN '30% to less than 50%' THEN 3
    WHEN '50% to less than 100%' THEN 4
  END;
