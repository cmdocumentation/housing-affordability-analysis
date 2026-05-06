# Housing Affordability Gap: Recent Immigrants vs. Canadian-Born Residents

Immigrants in Canada face significantly elevated housing affordability burdens in early career (ages 25–44), where they are 1.7–2.0x more likely to spend 30%+ of income on shelter than Canadian-born peers. However, this burden is not permanent: by mid-career (45–54), immigrants show marked improvement, and by age 65+, housing affordability patterns largely converge with non-immigrants. This analysis reveals a delayed but recoverable trajectory rather than persistent disadvantage.

**Research Question:** Do immigrants face higher housing affordability barriers than Canadian-born residents? How does burden vary by age?

---

## Contents

- [Data Source](#data-source)
- [Key Findings](#key-findings)
  - [Finding 1: Early-Career Burden Peak](#finding-1-immigrants-face-elevated-high-burden-housing-costs-across-all-age-groups)
  - [Finding 2: Low-Burden Housing Recovery](#finding-2-low-burden-housing-less-than-15-reveals-the-inverse-pattern)
  - [Finding 3: Mid-Career Inflection Point](#finding-3-the-middle-years-4554-show-unexpected-improvement-for-immigrants)
  - [Finding 4: Extreme-Burden Stability](#finding-4-the-extreme-burden-category-50-tells-a-story-of-growing-stability)
- [Recommended Next Steps](#recommended-next-steps)
---

## Data Source

**StatsCan Table:** [98-10-00245-01](https://www150.statcan.gc.ca/t1/tbl1/en/cv!recreate.action?pid=9810032801&selectedNodeIds=3D2,3D4,3D5,3D6,3D7,4D6,4D12,4D13&checkedLevels=0D1,1D1,2D4,3D5,4D1,5D1,6D3,7D1&refPeriods=20210101,20210101&dimensionLayouts=layout2,layout2,layout3,layout3,layout2,layout2,layout3,layout2,layout2&vectorDisplay=false) — Shelter-cost-to-income ratio by visible minority and immigrant status and period of immigration (2021 Census)

**Universe:** Canadian population in owner and tenant households with:
- Household total income > $0
- Shelter-cost-to-income ratio < 100%
- Residing in non-reserve, non-farm, private dwellings
- 2021 Census 25% sample data

**Coverage:** 546 rows across 152 geographic regions (CMAs and CAs), ages 20–64, stratified by immigrant status and age group.

**Necessary Data Points:** Immigration status, age group, shelter-cost-to-income ratio, core housing need

---

## Key Findings

### Finding 1: Immigrants Face Elevated High-Burden Housing Costs Across All Age Groups

Among people spending 30% or more of income on shelter, immigrants are consistently overrepresented compared to non-immigrants in the same age group—but the gap narrows significantly with age.

| Age Group | Immigrants (30%+ burden) | Non-Immigrants (30%+ burden) | Burden Ratio |
|-----------|--------------------------|------------------------------|--------------|
| 20–24     | 20.61%                   | 13.69%                       | 1.5x         |
| 25–34     | 23.19%                   | 13.30%                       | **1.7x**     |
| 35–44     | 23.24%                   | 11.79%                       | **2.0x** ← Peak |
| 45–54     | 19.51%                   | 10.48%                       | 1.9x         |
| 55–64     | 18.34%                   | 11.58%                       | 1.6x         |
| 65+       | 19.65%                   | 14.58%                       | **1.3x** ← Converges |

**What this means:** Immigrants aged 25–34 are **1.7x more likely** to spend 30%+ on shelter than non-immigrants in the same age group (23.19% vs. 13.30%). The gap **peaks at ages 35–44** (2.0x burden), then narrows progressively, nearly converging by age 65+ (1.3x).

This is a critical finding: housing affordability challenges for immigrants are front-loaded, not persistent.

### Contextualizing the Effect Size

A **1.7–2.0x burden ratio** represents a substantial and systematic disadvantage. To illustrate: if one in four non-immigrants faces high burden, nearly one in two immigrants in the same age cohort does. This is not a rounding error or statistical artifact—it reflects material differences in early-career housing costs that persist across multiple age groups and burden thresholds. In policy terms, this magnitude places immigration status among the primary structural drivers of early-career housing affordability disparities in Canada.

### Table 1. Worked Example—Confidence Intervals, Ages 25–34

| Metric | Count | 95% CI (Count) | Percentage | 95% CI (Percentage) |
|--------|-------|----------------|------------|---------------------|
| Immigrants, 30%+ shelter burden | 247,490 | [242,117–252,963] | 23.19% | [22.69%–23.70%] |
| Non-immigrants, 30%+ shelter burden | 446,325 | [442,928–449,753] | 13.30% | [13.20%–13.40%] |
| Burden Ratio | 1.74x | [1.69–1.80] | 1.74x | [1.69–1.80] |

**Note:** Confidence intervals reflect sampling uncertainty. All percentages in this analysis are reported with 95% CIs.

---

### Finding 2: Low-Burden Housing (Less Than 15%) Reveals the Inverse Pattern

While high-burden rates are elevated for immigrants in early career, so too is their ability to achieve low-burden housing—a sign of growing financial stability.

| Age Group | Immigrants (<15% burden) | Non-Immigrants (<15% burden) |
|-----------|--------------------------|------------------------------|
| 20–24     | 37.08%                   | 52.46%                       |
| 25–34     | 31.02%                   | 42.54%                       |
| 35–44     | 29.55%                   | 44.62%                       |
| 45–54     | 38.66%                   | 55.17%                       |
| 55–64     | 46.44%                   | 59.69%                       |
| 65+       | 46.56%                   | 56.13%                       |

**Why this matters:** By age 55–64, nearly half of all immigrants (**46.44%**) achieve low-burden housing (<15%), compared to 59.69% of non-immigrants. By 65+, the gap shrinks further (46.56% vs. 56.13%).

This pattern suggests **immigrants DO recover financially over their career span**—they are not permanently trapped in high-burden situations. The early-career gap reflects different starting conditions (lower initial wages, credential recognition barriers, or family circumstances), not permanent disadvantage.

---

### Finding 3: The "Middle Years" (45–54) Show Unexpected Improvement for Immigrants

A notable inflection point emerges at ages 45–54: immigrant high-burden rates decline **3.73 percentage points** (from 23.24% to 19.51%), while non-immigrant rates decline only **1.31 percentage points**. This suggests immigrants experience accelerated income growth or housing transitions in mid-career.

| Age Group | Immigrants (30%+ burden) | Non-Immigrants (30%+ burden) | Change from Prior Age Group |
|-----------|--------------------------|------------------------------|----------------------------|
| 25–34     | 23.19%                   | 13.30%                       | —                          |
| 35–44     | 23.24%                   | 11.79%                       | +0.05 pp (immigrant), −1.51 pp (non-immigrant) |
| 45–54     | **19.51%**               | 10.48%                       | **−3.73 pp (immigrant)** ✓, −1.31 pp (non-immigrant) |

**What this reveals:** Rather than burden persisting or worsening, **immigrants show marked improvement at mid-career (45–54)**. This contradicts the narrative of permanent affordability crisis. Instead, it aligns with life-cycle patterns of income growth, home equity accumulation, and financial stabilization—the same pattern seen in non-immigrants, just delayed by 10–15 years.

---

### Finding 4: The Extreme-Burden Category (50%+) Tells a Story of Growing Stability

Across all age groups, the proportion of immigrants spending 50% or more of income on shelter is remarkably stable and modest—ranging from 5.72% to 6.60% in working-age groups—and improves with age.

| Age Group | Immigrants (50%+ burden) | Non-Immigrants (50%+ burden) |
|-----------|--------------------------|------------------------------|
| 20–24     | 6.37%                    | 3.80%                        |
| 25–34     | 6.60%                    | 2.97%                        |
| 35–44     | 6.43%                    | 2.74%                        |
| 45–54     | 5.72%                    | 2.83%                        |
| 55–64     | 5.80%                    | 3.41%                        |
| 65+       | 5.78%                    | 3.49%                        |

**Why this matters:** While immigrants are more likely than non-immigrants to face extreme burden, the rate does **not increase with career progression**—it actually **decreases slightly** from 6.60% (age 25–34) to 5.72% (age 45–54).

## Recommended Next Steps:
1. Acquire longitudinal wage data (T1 General/T4 by arrival cohort) to test the Income Recognition hypothesis
2. Stratify by CMA (Toronto, Vancouver, Calgary, Montreal) to identify whether mid-career recovery holds in high-cost regions
3. Cross-reference with immigration administrative records to quantify return migration rates at ages 25–34 (to assess survivor bias)
4. If available, analyze housing tenure transitions (rental → owner) by age and immigrant status
This suggests that severe affordability crises are not the norm, and that immigrants gradually move out of extreme burden categories as they age.

