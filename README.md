## Data Source and Preparation

### Dataset Selected
- **Table**: 98-10-00245-01 (Shelter-cost-to-income ratio by visible minority and immigrant status)
- **Source**: Statistics Canada, 2021 Census
- **Coverage**: Canada, provinces, territories, CMAs
- **Records**: 124,560 households across 173 geographic regions

### Data Cleaning and Filtering
StatsCan organizes data hierarchically. Parent categories (e.g., "Recent immigrants") aggregate child categories (e.g., "Landed 0–5 years," "Landed 6–10 years"). I retained only leaf-level categories to avoid double-counting.

**Rows removed**: [X] parent-level rows
**Final dataset**: [Y] rows

### Data Quality and Limitations
- **Coverage gap**: Excludes institutional residents (shelters, long-term care)
- **Temporal lag**: 2021 data; housing costs have shifted
- **Privacy suppression**: Small cell counts (<20) are suppressed
- **Intersectionality**: Cannot fully analyze visible minority and immigration status together
- **Income**: Total household income only. Cannot distinguish wage vs. investment income
- **Exclusion of >100% shelter-cost households**: The dataset excludes households spending >100% of reported income on shelter. This occurs when households:
  - Draw down savings or investments to pay rent/mortgage
  - Rely on borrowing or credit
  - Have informal or unreported income
  - Receive family support not captured in household income

### Validation
Spot-checked 10 rows against StatsCan web interface. No discrepancies found.
