-- 03_channel_segmentation.sql
-- Business Question:
-- Which marketing channels drive the highest conversion rates?
--
-- Method:
-- 1. Group sessions by traffic source medium.
-- 2. Count total sessions and purchasing sessions.
-- 3. Compute purchase rate per channel.
--
-- Why it matters:
-- Channel-level conversion performance informs budget allocation
-- and ROI optimization across paid, organic, referral, and affiliate sources.

SELECT
  trafficSource.medium AS channel,
  COUNT(*) AS sessions,
  SUM(IF(totals.transactions >= 1, 1, 0)) AS purchasing_sessions,
  SAFE_DIVIDE(SUM(IF(totals.transactions >= 1, 1, 0)), COUNT(*)) AS purchase_rate
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY channel
ORDER BY purchase_rate DESC;
