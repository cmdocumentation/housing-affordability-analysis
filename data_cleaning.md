# Data Cleaning and Preparation

## Age Group Filtering

**Focus:** Working-age adults (ages 20–64) with employment-based income

**What I excluded and why:**
- **Under 20:** Excluded because income data is incomplete and housing is often subsidized by parents
- **65+:** Included in the extended analysis to see if affordability patterns stay the same after retirement, but interpreted carefully since retirement income (CPP, OAS, pensions) works differently than wages

This approach lets me compare apples to apples: people with similar income structures, while still exploring what happens later in life.

---

## Non-Permanent Resident Filtering

I excluded non-permanent residents (temporary workers, international students) because they face very different housing and employment situations than permanent residents. My analysis compares permanent resident immigrants to Canadian-born residents, so including temporary residents would muddy that comparison.

---

## Removing Logically Impossible Data

I removed rows where the immigration period and age group didn't make sense together. For example: someone couldn't have immigrated before 1980 and be 20–24 years old today (the math doesn't work).

**Important exception:** Statistics Canada's data includes both principal applicants and sponsored dependents (children brought over by parents). So rows showing people who arrived in 1980–1990 but are now 25–44 are actually valid. They immigrated as children. I kept those.

Rows with all zeros (e.g., no one in a particular category) were also removed, since they're just structural artifacts with no real data.

---

## Handling Statistics Canada's Hierarchical Structure

Statistics Canada organizes data in layers (parent categories that contain child categories). I applied this logic:

- **Kept:** Specific, detailed categories (e.g., "20 to 24 years," "25 to 34 years")
- **Removed:** Broad parent categories that just summarized the details below them (e.g., "Total Age")
- **Exception:** Geographic parent categories like "Canada" were kept so I could see the national picture, but individual provinces were removed

This gave me the most granular useful data without duplication.

---

## Cleaning Up Fields

Non-data rows (table titles, release dates, footnotes, and empty totals) were removed. Irrelevant columns were deleted.

---

## Restructuring the Data for Analysis

**The challenge:** Statistics Canada's raw table had immigrant status and immigration period grouped together in a single column, making it hard to work with.

**The fix:** I separated them into two distinct columns: one for immigrant status, one for arrival period. This made the data much easier to query and aggregate in SQL.

I used a Fill Down function to repeat parent category values across all the rows that belonged to them, creating a clean, flat table that SQL could easily aggregate.

---

## Renaming Columns for Clarity

I replaced Statistics Canada's technical column names with readable, analysis-friendly names that made sense in context.

---

## Converting Data Types

**The problem:** When the data imported, the Count column had comma thousand-separators (e.g., "8,945") and was formatted as text, not numbers.

**The solution:** I converted it to numeric format so I could run SQL aggregation functions like `SUM()`.

**Why this matters:** If you try to sum text-formatted numbers, SQL will either fail silently or give you wrong results. Catching this during import is critical for data integrity.

---

## How Confidence Intervals Were Calculated

I report confidence intervals at the category level. For example, the uncertainty around "15% of immigrants aged 25–34 spend less than 15% on housing."

**Method:** I took Statistics Canada's original 95% confidence intervals for counts and scaled them by the group total to get percentage-level confidence intervals.

**What they mean:** These intervals tell you the likely range for a specific category's count and percentage within its age–immigrant group. They don't reflect uncertainty across multiple aggregated categories, just the single category you're looking at.

---

## Tools & Technologies Used

- **Data Processing:** Excel, DB Browser for SQLite
- **Visualization/Analysis:** Tableau
- **Version Control:** Git
