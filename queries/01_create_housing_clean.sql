-- ============================================================
-- Query: Create housing affordability table
-- Purpose: Import StatsCan census data and standardize column naming
-- Author: Christina
-- Date: April 2026
-- ============================================================

-- DATA SOURCE
-- Table: 98-10-00245-01 (Shelter-cost-to-income ratio by visible minority 
--        and immigrant status)
-- Source: Statistics Canada, 2021 Census (25% sample)
-- Universe: Owner and tenant households with income > $0 and 
--           shelter-cost-to-income ratio < 100%, in non-reserve 
--           non-farm private dwellings

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
