-- QUERY 6: Mid-career reprieve analysis (25–34, 35–54, 45–54)
-- Purpose: Support Finding 3 - Show the progression and reprieve pattern
--          Includes 25–34 as baseline, 35–44 as peak, 45–54 as reprieve
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
  AS "Non-Immigrants (30%+ burden)"
  
FROM housing
WHERE age_group IN ('25 to 34 years', '35 to 44 years', '45 to 54 years')
GROUP BY age_group
ORDER BY 
  CASE age_group
    WHEN '25 to 34 years' THEN 1
    WHEN '35 to 44 years' THEN 2
    WHEN '45 to 54 years' THEN 3
  END;

-- QUERY 7: Extreme housing cost burden analysis (50%+)
-- Purpose: Support Finding 4 - Show that extreme burdens are rare but 
--          immigrants are ~2x more likely than non-immigrants
-- Dependency: Requires Query 1 (housing table)

SELECT 
  age_group,
  ROUND(100.0 * SUM(CASE 
    WHEN immigrant_status = 'Immigrant' 
      AND shelter_cost_ratio = '50% to less than 100%' 
    THEN count_total END) / 
    SUM(CASE WHEN immigrant_status = 'Immigrant' THEN count_total END), 2) 
  AS "Immigrants (50%+ burden)",
  
  ROUND(100.0 * SUM(CASE 
    WHEN immigrant_status = 'Non-immigrant' 
      AND shelter_cost_ratio = '50% to less than 100%' 
    THEN count_total END) / 
    SUM(CASE WHEN immigrant_status = 'Non-immigrant' THEN count_total END), 2) 
  AS "Non-Immigrants (50%+ burden)",
  
  ROUND(
    (SUM(CASE WHEN immigrant_status = 'Immigrant' 
      AND shelter_cost_ratio = '50% to less than 100%' 
      THEN count_total END) * 1.0 / 
    SUM(CASE WHEN immigrant_status = 'Immigrant' THEN count_total END)) /
    (SUM(CASE WHEN immigrant_status = 'Non-immigrant' 
      AND shelter_cost_ratio = '50% to less than 100%' 
      THEN count_total END) * 1.0 / 
    SUM(CASE WHEN immigrant_status = 'Non-immigrant' THEN count_total END)), 2) 
  AS "Burden Ratio (50%+)"
  
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
