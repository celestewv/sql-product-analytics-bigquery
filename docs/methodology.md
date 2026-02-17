# Methodology

## Data Source
Google Analytics 360 Sample Dataset (BigQuery public data)

## Analytical Steps

1. Aggregated executive KPIs
2. Reconstructed funnel using session-level grouping
3. Segmented sessions by traffic source medium
4. Calculated retention via multi-session users

## SQL Techniques Used

- CTEs (WITH statements)
- Conditional aggregation
- SAFE_DIVIDE for error-safe calculations
- UNNEST for nested event-level data
