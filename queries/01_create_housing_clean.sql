-- ============================================================
-- Query: Create Clean Housing Dataset
-- Purpose: Prepare StatsCan data for analysis
-- Author: Christina
-- Date: March 2026
-- ============================================================

-- DATA SOURCE
-- Table: 98-10-00245-01 (Shelter-cost-to-income ratio by visible minority 
--        and immigrant status)
-- Source: Statistics Canada, 2021 Census (25% sample)
-- Universe: Owner and tenant households with income > $0 and 
--           shelter-cost-to-income ratio < 100%, in non-reserve 
--           non-farm private dwellings

-- ACTIONS
-- - Filter to 2021 Census data only
-- - Remove rows with null population counts
-- - Rename columns for readability
-- - Create a clean, reusable table for downstream analysis

CREATE TABLE housing_clean AS
SELECT 
  REF_DATE as Year,
  GEO as Geography,
  -- Remove hierarchical category labels for clarity
  "Visible minority (15)" as VisibleMinority,
  "Immigrant status and period of immigration (11)" as ImmigrantStatus,
  "Age (15C)" as AgeGroup,
  "Gender (3)" as Gender,
  "Shelter-cost-to-income ratio (8)" as ShelterCostRatio,
  "Core housing need (3)" as CoreHousingNeed,
  VALUE as PopulationCount
FROM StatsCan
WHERE REF_DATE = 2021
  -- Exclude null values to ensure clean, analyzable data
  AND VALUE IS NOT NULL;

-- OUTPUT
-- Table name: housing_clean
-- Columns: Year, Geography, VisibleMinority, ImmigrantStatus, 
--          AgeGroup, Gender, ShelterCostRatio, CoreHousingNeed, PopulationCount

-- VALIDATION - Run this to confirm table was created correctly
SELECT 
  COUNT(*) as TotalRows,
  COUNT(DISTINCT Geography) as UniqueGeographies,
  COUNT(DISTINCT ImmigrantStatus) as UniqueImmigrantStatuses,
  MIN(PopulationCount) as MinPopulation,
  MAX(PopulationCount) as MaxPopulation
FROM housing_clean;
