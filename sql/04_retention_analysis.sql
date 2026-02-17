-- Returning User Rate

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
