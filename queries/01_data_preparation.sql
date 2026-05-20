-- QUERY 1: Create housing affordability table
-- Purpose: Import StatsCan census data and standardize column naming
-- Source: Statistics Canada Table 98-10-0328-01, Census 2021
CREATE TABLE housing AS
SELECT 
  "Immigrant Status" AS immigrant_status,
  "Immigration Period" AS immigration_period,
  "Age Group" AS age_group,
  "Shelter-Cost-to-Income Ratio" AS shelter_cost_ratio,
  CAST(REPLACE("Count", ',', '') AS INTEGER) AS count_total,
  CAST(REPLACE("95% Confidence Interval Lower Bound, Count", ',', '') AS INTEGER) AS ci_lower_bound,
  CAST(REPLACE("95% Confidence Interval Upper Bound, Count", ',', '') AS INTEGER) AS ci_upper_bound
FROM StatsCan;

-- QUERY 2: Exploratory distribution of shelter-cost ratios
-- Purpose: Examine the granular distribution of housing cost burdens across 
--          all shelter-cost-ratio bands, by age group and immigrant status
-- Use case: Foundation for understanding data shape before calculating 
--           aggregate metrics. Answers: "What % of each group falls into 
--           each burden category (0–15%, 15–30%, 30–50%, 50%+)?"
-- Outputs: Distribution percentages for each age/status/ratio combination
-- Dependency: Requires Query 1 (housing table)
-- Note: This is exploratory—not directly cited in findings, but essential 
--       for validating aggregate calculations in Queries 3 & 5

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
