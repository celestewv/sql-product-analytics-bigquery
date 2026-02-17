-- 04_retention_analysis.sql
-- Business Question:
-- What percentage of users return to the platform?
--
-- Method:
-- 1. Aggregate sessions by user (fullVisitorId).
-- 2. Identify users with 2+ sessions.
-- 3. Compute return rate.
--
-- Why it matters:
-- Returning users are strongly correlated with higher lifetime value.
-- Low retention may indicate weak product-market fit or poor engagement.


WITH user_sessions AS (
  SELECT
    fullVisitorId,
    COUNT(*) AS sessions
  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
  GROUP BY fullVisitorId
)

SELECT
  COUNT(*) AS total_users,
  SUM(IF(sessions >= 2, 1, 0)) AS returning_users,
  SAFE_DIVIDE(SUM(IF(sessions >= 2, 1, 0)), COUNT(*)) AS return_rate
FROM user_sessions;
