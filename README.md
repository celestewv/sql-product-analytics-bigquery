# SQL Product Analytics Case Study (BigQuery)

## Overview

This project analyzes 12 months of Google Analytics 360 e-commerce data using SQL in BigQuery.

The objective was to evaluate:

- Executive performance KPIs  
- Conversion funnel performance  
- Marketing channel effectiveness  
- User retention behavior  

All insights were derived directly from raw event-level session data.

Dataset:  
`bigquery-public-data.google_analytics_sample`

---

## Executive Summary

**714,167 users analyzed**  
**903,653 total sessions**  
**12,115 transactions**  
**1.34% transactions per session**

### Key Insights

- Significant drop-off occurs between homepage and basket (~11% progression).
- Checkout completion is strong once users reach payment (~65%).
- Paid channels outperform organic and referral in conversion rate.
- Only 13% of users return → strong retention opportunity.

Primary growth levers identified:
1. Improve early funnel engagement
2. Optimize homepage UX
3. Increase high-performing channel investment
4. Implement retention-focused lifecycle strategies

---

## Repository Structure
sql-product-analytics-bigquery/
│
├── README.md
├── sql/
│ ├── 01_executive_kpis.sql
│ ├── 02_funnel_analysis.sql
│ ├── 03_channel_segmentation.sql
│ └── 04_retention_analysis.sql
├── docs/
│ ├── executive_case_study.md
│ ├── methodology.md
│ └── funnel_diagram.txt


---

## Skills Demonstrated

- Advanced SQL (CTEs, aggregations, SAFE_DIVIDE)
- Funnel reconstruction from event data
- Marketing channel ROI analysis
- Retention measurement
- Business KPI framing
- Executive-level insight communication

---

## Business Framing

This project simulates a consulting engagement:

1. Define business question
2. Translate into analytical logic
3. Extract insights
4. Deliver executive-ready findings

---

## How to Reproduce

1. Open Google BigQuery
2. Access dataset:
   `bigquery-public-data.google_analytics_sample`
3. Run scripts inside `/sql`

---

Author:  
Celeste Walstrom-Vangor  
B.S. Mathematics & Computer Science  
SQL | Product Analytics | Consulting-Oriented Analytics
