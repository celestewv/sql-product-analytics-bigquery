# SQL Product Analytics Case Study (BigQuery)

## Business Problem

An e-commerce platform sought to understand why overall conversion and repeat engagement were underperforming.

Using 12 months of Google Analytics 360 data in BigQuery, this project evaluates:

- Conversion funnel efficiency
- Marketing channel ROI
- User retention behavior
- Executive-level KPIs

Dataset:
`bigquery-public-data.google_analytics_sample`

---

## Executive Summary

**714,167 users analyzed**  
**903,653 total sessions**  
**12,115 transactions**  
**1.34% overall transaction rate**  
**13.1% returning user rate**

### Primary Diagnosis

The platform’s performance constraint is early-stage engagement.

- Only **10.9%** of homepage visitors progress to basket.
- Once users reach payment, **65.2% complete purchase.**
- Referral and affiliate traffic generate volume but extremely low conversion efficiency (≤0.11%).
- Only **13% of users return**, indicating weak retention depth.

Conclusion:
Checkout flow is strong. The opportunity lies in product discovery, engagement optimization, and lifecycle strategy.

---

## Key Analytical Findings

### Funnel Performance
- Home → Basket: 10.9%
- Basket → Payment: 24.9%
- Payment → Purchase: 65.2%

Largest drop-off occurs at the homepage-to-basket transition.

### Channel Performance
Paid channels (cpm, cpc) convert ~2x more efficiently than organic.
Referral and affiliate channels underperform significantly.

### Retention
Return rate: 13.1%
Most users are single-session visitors.

---

## Strategic Recommendations

1. Improve homepage-to-product engagement
2. Introduce personalized product recommendations
3. Reallocate marketing budget toward high-performing channels
4. Implement re-engagement campaigns to increase return rate

Target KPI Improvements:
- Increase home-to-basket rate from 10.9% → 14%
- Increase overall conversion from 1.34% → 1.8%
- Increase return rate from 13% → 18%

---

## Repository Structure


sql-product-analytics-bigquery/  
│  
├── README.md  
├── sql  
│ ├── 01_executive_kpis.sql  
│ ├── 02_funnel_analysis.sql  
│ ├── 03_channel_segmentation.sql  
│ └── 04_retention_analysis.sql  
├── docs  
│ ├── executive_case_study.md  
│ ├── methodology.md  
│ └── funnel_diagram.txt



---

## Technical Competencies Demonstrated

- Advanced SQL (CTEs, aggregation, SAFE_DIVIDE)
- Session-level funnel reconstruction from event data
- Marketing channel ROI analysis
- Retention measurement using behavioral grouping
- KPI-driven business insight development
- Structured analytical documentation

---

## How to Reproduce

1. Open Google BigQuery
2. Access dataset:
   `bigquery-public-data.google_analytics_sample`
3. Execute scripts inside `/sql`

---

Author  
Celeste Walstrom-Vangor  
B.S. Mathematics & Computer Science  
SQL | Product Analytics | Data-Driven Strategy
