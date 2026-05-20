-- QUERY 3: Calculate 30%+ housing burden percentage and burden ratio by age group
-- Purpose: Primary metric for Finding 2 - Housing burden disparities peak in mid-career
-- Outputs: Burden % for immigrants vs. non-immigrants; burden ratio by age
-- Dependency: Requires Query 1 (housing table)

SELECT 
  age_group,
  ROUND(100.0 * SUM(CASE 
    WHEN immigrant_status = 'Immigrant' 
      AND shelter_cost_ratio IN ('30% to less than 50%', '50% to less than 100%') 
    THEN count_total END) / 
    SUM(CASE WHEN immigrant_status = 'Immigrant' THEN count_total END), 2) 
  AS "Immigrants (30%+ burden)",
  
  ROUND(100.0 * SUM(CASE 
    WHEN immigrant_status = 'Non-immigrant' 
      AND shelter_cost_ratio IN ('30% to less than 50%', '50% to less than 100%') 
    THEN count_total END) / 
    SUM(CASE WHEN immigrant_status = 'Non-immigrant' THEN count_total END), 2) 
  AS "Non-Immigrants (30%+ burden)",
  
  ROUND(
    (SUM(CASE WHEN immigrant_status = 'Immigrant' 
      AND shelter_cost_ratio IN ('30% to less than 50%', '50% to less than 100%') 
      THEN count_total END) * 1.0 / 
    SUM(CASE WHEN immigrant_status = 'Immigrant' THEN count_total END)) /
    (SUM(CASE WHEN immigrant_status = 'Non-immigrant' 
      AND shelter_cost_ratio IN ('30% to less than 50%', '50% to less than 100%') 
      THEN count_total END) * 1.0 / 
    SUM(CASE WHEN immigrant_status = 'Non-immigrant' THEN count_total END)), 1) 
  AS "Burden Ratio"
  
FROM housing
GROUP BY age_group
ORDER BY 
  CASE age_group
    WHEN '20 to 24 years' THEN 1
    WHEN '25 to 34 years' THEN 2
    WHEN '35 to 44 years' THEN 3
    WHEN '45 to 54 years' THEN 4
    WHEN '55 to 64 years' THEN 5
    WHEN '65 years and over' THEN 6
  END;
