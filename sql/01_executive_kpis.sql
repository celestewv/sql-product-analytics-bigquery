-- 01_executive_kpis.sql
-- Summary KPIs (Users, Sessions, Transactions, Conversion)

SELECT
  COUNT(DISTINCT fullVisitorId) AS users,
  COUNT(*) AS sessions,
  SUM(totals.pageviews) AS total_pageviews,
  SUM(totals.transactions) AS total_transactions,
  SAFE_DIVIDE(SUM(totals.transactions), COUNT(*)) AS transactions_per_session
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
