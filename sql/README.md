# SQL Analysis Scripts

This folder contains all SQL queries used to answer core business questions.

Each file represents a distinct analytical objective.

---

## 01_executive_kpis.sql
Calculates top-level performance metrics:
- Users
- Sessions
- Pageviews
- Transactions
- Transactions per session

Purpose: Executive dashboard metrics.

---

## 02_funnel_analysis.sql
Reconstructs session-level funnel:

home → basket → payment → purchase

Calculates conversion rates between stages.

Purpose: Identify friction points in checkout flow.

---

## 03_channel_segmentation.sql
Analyzes marketing channel performance by:

- Sessions
- Purchasing sessions
- Purchase rate

Purpose: Inform marketing ROI allocation.

---

## 04_retention_analysis.sql
Measures return rate using session frequency per user.

Purpose: Evaluate engagement and lifetime value signals.
