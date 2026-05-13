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
