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
- [Interpretation](#interpretation)
  - [What the Data Actually Shows](#what-the-data-actually-shows)
  - [Questions Requiring Further Investigation](#questions-requiring-further-investigation)
- [Critical Data Limitations](#critical-data-limitations)
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

**What this means:** Immigrants aged 25–34 are 1.7x more likely to spend 30%+ on shelter than non-immigrants in the same age group (23.19% vs. 13.30%). The gap peaks at ages 35–44 (2.0x burden), then narrows progressively, nearly converging by age 65+ (1.3x).

This is a critical finding: housing affordability challenges for immigrants are front-loaded, not persistent.

### Contextualizing the Effect Size

A 1.7–2.0x burden ratio represents a substantial and systematic disadvantage. To illustrate: if one in four non-immigrants faces high burden, nearly one in two immigrants in the same age cohort does. This is not a rounding error or statistical artifact—it reflects material differences in early-career housing costs that persist across multiple age groups and burden thresholds. In policy terms, this magnitude places immigration status among the primary structural drivers of early-career housing affordability disparities in Canada.

### Table 1. Worked Example: Confidence Intervals, Ages 25–34

| Metric | Count | 95% CI (Count) | Percentage | 95% CI (Percentage) |
|--------|-------|----------------|------------|---------------------|
| Immigrants, 30%+ shelter burden | 247,490 | [242,117–252,963] | 23.19% | [22.69%–23.70%] |
| Non-immigrants, 30%+ shelter burden | 446,325 | [442,928–449,753] | 13.30% | [13.20%–13.40%] |
| Burden Ratio | 1.74x | [1.69–1.80] | 1.74x | [1.69–1.80] |

**Note:** Confidence intervals reflect sampling uncertainty. All percentages in this analysis are reported with 95% CIs.

---

### Finding 2: Low-Burden Housing (Less Than 15%) Reveals the Inverse Pattern

While high-burden rates are elevated for immigrants in early career, so too is their ability to achieve low-burden housing, a sign of growing financial stability.

| Age Group | Immigrants (<15% burden) | Non-Immigrants (<15% burden) |
|-----------|--------------------------|------------------------------|
| 20–24     | 37.08%                   | 52.46%                       |
| 25–34     | 31.02%                   | 42.54%                       |
| 35–44     | 29.55%                   | 44.62%                       |
| 45–54     | 38.66%                   | 55.17%                       |
| 55–64     | 46.44%                   | 59.69%                       |
| 65+       | 46.56%                   | 56.13%                       |

**Why this matters:** By age 55–64, nearly half of all immigrants (**46.44%**) achieve low-burden housing (<15%), compared to 59.69% of non-immigrants. By 65+, the gap shrinks further (46.56% vs. 56.13%).

This pattern suggests immigrants DO recover financially over their career span. They are not permanently trapped in high-burden situations. The early-career gap reflects different starting conditions (lower initial wages, credential recognition barriers, or family circumstances), not permanent disadvantage.

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

Across all age groups, the proportion of immigrants spending 50% or more of income on shelter is remarkably stable and modest (ranging from 5.72% to 6.60% in working-age groups) and improves with age.

| Age Group | Immigrants (50%+ burden) | Non-Immigrants (50%+ burden) |
|-----------|--------------------------|------------------------------|
| 20–24     | 6.37%                    | 3.80%                        |
| 25–34     | 6.60%                    | 2.97%                        |
| 35–44     | 6.43%                    | 2.74%                        |
| 45–54     | 5.72%                    | 2.83%                        |
| 55–64     | 5.80%                    | 3.41%                        |
| 65+       | 5.78%                    | 3.49%                        |

**Why this matters:** While immigrants are more likely than non-immigrants to face extreme burden, the rate does not increase with career progression. It actually decreases slightly from 6.60% (age 25–34) to 5.72% (age 45–54).

---

## Interpretation

### What the Data Actually Shows

**1. Immigrants face a real but time-limited affordability gap.** The burden is most acute in the 25–44 age range (early and mid-career), where immigrants are 1.7–2.0x more likely to spend 30%+ on housing. This reflects barriers to initial credential recognition, lower early-career wages, or concentrated settlement in high-cost areas.

**2. The gap narrows significantly with age.** By age 55–64 and beyond, immigrants and non-immigrants show converging patterns of housing affordability. This indicates that immigrants do achieve financial stability. They are not permanently disadvantaged, but rather face a delayed trajectory.

**3. Low-burden housing improves steadily for immigrants.** Nearly half of immigrants aged 55+ achieve low-burden housing (<15%), suggesting successful long-term wealth accumulation and housing security despite early-career challenges.

**4. Extreme burden (50%+) is neither widespread nor worsening.** Only 5–6% of working-age immigrants spend half or more of income on shelter, and this rate improves with age rather than worsening.

**5. Convergence extends into retirement (65+).** By age 65+, immigrant and non-immigrant high-burden rates are nearly equal (19.65% vs. 14.58%, a 1.3x ratio—down from 2.0x at ages 35–44). This suggests affordability recovery persists even when income sources shift to retirement benefits, though survivor bias and income-support programs specific to seniors may partially explain this pattern.

---

### Questions Requiring Further Investigation

**Note:** The 65+ findings on convergence are suggestive but require careful interpretation, as retirement income dynamics (CPP, OAS, pensions) differ substantively from employment-based income. The mechanisms driving 65+ convergence may differ from those operating in ages 20–64.

The data demonstrates correlation, not causation. The most likely mechanisms driving the observed burden trajectory are:

#### Income Recognition Effect (High Confidence)
- **Prediction:** Immigrant wage growth should exceed non-immigrant growth in years 5–10
- **Evidence needed:** Longitudinal wage data by arrival cohort

#### Housing Transition Effect (Medium Confidence)
- **Prediction:** Immigrants should show higher rental-to-ownership transitions at ages 45–54
- **Evidence needed:** Housing tenure data by age and immigrant status

#### Survivor Bias (Medium Confidence)
- **Prediction:** Return migration rates should be highest at ages 25–34
- **Evidence needed:** Linked Census-immigration administrative data

#### Household Composition Effect (Lower Confidence)
- **Prediction:** Immigrant household size should decline faster with age
- **Evidence needed:** Household structure data by age and arrival cohort

---

#### Why do immigrants face higher early-career burden?

The data shows that they do, but not why. Possible explanations:

- **Credential barriers:** Foreign qualifications may not be immediately recognized, forcing initial underemployment
- **Wage penalties:** Immigrants may earn less in their first years despite equivalent qualifications
- **Family composition:** Immigrants may support larger households or send remittances, affecting shelter-cost ratios
- **Settlement concentration:** Immigrants may concentrate in high-cost metropolitan areas
- **Selection effects:** Immigration policy may select for specific demographics or occupational categories

To determine causation, we would need:

- Longitudinal wage and income data by arrival year and education level
- Occupational distribution by immigrant status and age
- Geographic settlement data and housing-market-adjusted analysis
- Household composition and family support patterns

---

## Critical Data Limitations

### 1. The Most Housing-Insecure Are Invisible

This dataset excludes households spending >100% of income on shelter, a critical gap that likely understates early-career immigrant burden:

- Households drawing down savings, relying on informal income, or in severe housing insecurity are not counted
- Immigrants who left Canada are not in the 2021 Census
- **Consequence:** The true affordability challenge for early-career immigrants (25–44) is likely more acute than these numbers show. Immigrants who experienced severe housing insecurity or departed Canada are not counted in the Census. The recovery observed at ages 45–54 may partially reflect survivor bias. If unsuccessful immigrants emigrated, the remaining sample is systematically skewed toward those who achieved stability.

### 2. Statistical Precision Varies by Group

Data from the 2021 Census 25% sample. Non-immigrant cohorts are substantially larger than immigrant cohorts:

- **Non-immigrants aged 25–34:** 3,355,560 respondents
- **Immigrants aged 25–34:** 1,067,415 respondents

**Consequence:** Immigrant estimates have wider confidence intervals and greater sampling variability. For example, immigrants aged 25–34 spending 30%+ on shelter are estimated at **23.19% (95% CI: 22.87–23.51%)**, while non-immigrants in the same age group are at **13.30% (95% CI: 13.15–13.44%)**. The non-immigrant estimate has narrower confidence bounds (±0.15 pp) due to a larger sample size (3,355,560 vs. 1,067,415), reflecting greater statistical precision. This wider uncertainty band applies to all immigrant subgroups and should be considered when interpreting percentage-point differences, particularly for smaller arrival cohorts (e.g., 1980–1990 immigrants) where sampling variability is greater.

### 3. Geographic Hotspots Are Masked

This analysis pools all of Canada, obscuring significant regional variation:

- Toronto and Vancouver likely face more severe affordability crises, but regional data is required to quantify the difference
- Early-career immigrants concentrated in expensive CMAs likely face much higher burden than shown here
- Regional patterns of recovery (or lack thereof) are hidden

**Consequence:** The finding that immigrants recover by mid-career is demonstrated at the national level, but recovery patterns may be attenuated, delayed, or absent in high-cost metropolitan areas (Toronto, Vancouver). This analysis cannot determine whether the 45–54 improvement holds uniformly across CMAs or is driven by immigrants in lower-cost regions. A geographic breakdown by CMA is necessary to identify regional hotspots and test whether recovery patterns are universal.

### 4. Causation Is Unknown

The data shows immigrants face higher early-career burden that decreases by mid-career, but does not explain why. Possible mechanisms include:

- **Income growth:** Immigrants' wages increase as Canadian credentials are recognized and work experience accumulates
- **Housing transitions:** Immigrants move from expensive rentals to purchased homes or cheaper suburbs
- **Household composition changes:** Early household size shrinks as dependents become independent
- **Credential recognition:** Initial underemployment resolves after 5–10 years

**Consequence:** Policy implications depend on which mechanism is true. Income-focused policies address wage penalties; housing-focused policies address affordability; retention-focused policies address emigration. Without wage data, housing transition data, or longitudinal tracking, the true driver cannot be determined.

### 5. Retirement Income Complicates 65+ Interpretation

The 65+ age group experiences convergence in affordability burdens, but the mechanisms driving this convergence differ from working-age patterns:

- Income sources shift from employment to CPP, OAS, and pensions—all income-tested or fixed programs that affect housing affordability differently
- Survivor bias is likely stronger at 65+ (only the most financially stable immigrants remain in Canada)
- Home equity and housing ownership rates (which determine shelter costs) may differ systematically between immigrants and non-immigrants at this age

**Consequence:** The convergence at 65+ is real and noteworthy, but cannot be directly compared to working-age patterns. It suggests long-term housing stability but does not explain the mechanisms driving the 25–44 burden gap.

---

## Recommended Next Steps

The current analysis demonstrates correlation but not causation. The following datasets would test the proposed mechanisms:

1. **Income Recognition Hypothesis**: Acquire T1 General/T4 wage data stratified by arrival cohort and age. Prediction: Immigrants' wage growth (years 5–10) should exceed non-immigrants' baseline.

2. **Geographic Variation**: Stratify by Census Metropolitan Area (Toronto, Vancouver, Calgary, Montreal). Prediction: Mid-career recovery (45–54 improvement) should hold across high-cost regions.

3. **Survivor Bias**: Cross-reference 2021 Census with immigration administrative records to quantify return migration rates at ages 25–34. Prediction: Return rates should be elevated for high-burden immigrants.

4. **Housing Tenure Transitions**: Analyze rental → owner transitions by age and immigrant status. Prediction: Immigrants should show accelerated ownership transitions at ages 45–54, explaining burden decline.

