# Methodology

## Data Source

**StatsCan Table:** 98-10-00245-01 — Shelter-cost-to-income ratio by visible minority and immigrant status and period of immigration (2021 Census)

### Universe Definition

Canadian population in owner and tenant households meeting all of the following criteria:
- Household total income > $0
- Shelter-cost-to-income ratio < 100%
- Residing in non-reserve, non-farm, private dwellings
- 2021 Census 25% sample data

### Coverage

- **Sample size:** 546 rows
- **Geographic regions:** 152 (CMAs and CAs)
- **Age range:** 20–64 (with extended 65+ analysis)
- **Stratification:** Immigrant status and age group

### Key Data Points

- Immigration status
- Age group
- Shelter-cost-to-income ratio
- Core housing need designation

---

## Data Cleaning & Preparation

### Age Group Filtering

**Primary analysis:** Ages 20–64 (working-age populations with employment-based income)

**Exclusions and rationale:**
- **Under 20:** Excluded due to incomplete income data and parental housing dependence
- **65+:** Included in extended findings to assess whether affordability convergence patterns persist into retirement, despite different income dynamics (CPP, OAS, pensions). Results for 65+ are interpreted with caution due to these distinct income sources

### Non-Permanent Resident Filtering

Non-permanent residents (temporary workers, international students) were excluded because they represent a distinct housing and employment context outside the scope of this comparative analysis between Canadian-born and permanent resident immigrants.

### Logically Impossible Combinations & Small-Cell Artifacts

Removed rows where immigration period and age group were impossible based on birth year calculations (e.g., immigrants arriving before 1980 who are currently 20–44 years old would require arrival at age negative to 5).

**Exception:** The table's universe includes "immigrants admitted to Canada," which encompasses both principal applicants and sponsored dependents (children). Therefore, rows combining 1980–1990 arrivals with ages 25–34 and 35–44 are **retained**, as they represent valid childhood arrivals and family reunification cases.

**Removal criteria:** Rows with all-zero values (e.g., 1980–1990 arrivals aged 20–24) were removed as structural artifacts with no analytical value.

### Statistics Canada Hierarchical Categories

StatsCan organizes data hierarchically. Applied the following filtering logic:

- **Parent-level rows not needed:** Filtered out (e.g., "Total Age")
- **Leaf-level categories retained:** Specific age groups (e.g., "20 to 24 years," "25 to 34 years")
- **Parent categories when needed:** Retained only parent level (e.g., "Canada") and filtered out child categories (e.g., individual provinces)

### Field Cleanup

Removed:
- Non-data rows (table titles, release dates, footnotes, empty totals)
- Irrelevant fields

### Data Restructuring & Normalization

**Original structure:** Immigrant status and immigration period grouped in a single column

**Normalized structure:** Separated immigrant status and period into two distinct attributes for clarity and scalability

StatsCan Table 98-10-0328-01 had hierarchical row grouping where parent categories (Immigrant Status, Immigration Period) spanned multiple rows. Used a **Fill Down function** to repeat parent values across all associated child rows, creating a flat structure suitable for SQL aggregation.

### Field Renaming

Replaced StatsCan's raw column names with readable, analysis-friendly names.

### Data Type Conversion

**Issue:** The Count column imported with comma thousand-separators (e.g., "8,945"), formatted as text

**Solution:** Converted to numeric format to enable SQL aggregation functions

**Why this matters:** Text-formatted numbers will cause `SUM()` and other aggregate functions to fail silently or produce unexpected results. Verifying data types during import is critical.

### Confidence Interval Methodology

Confidence intervals are reported at the **category level** (e.g., for the "Less than 15% burden" category within each age–immigrant group).

**Calculation method:** Percentage confidence intervals are derived by scaling the count-level CIs (original StatsCan 95% CI bounds) by the group total.

**Interpretation:** These represent uncertainty in the category-level count and its percentage of the group, **not** uncertainty across aggregated categories.
