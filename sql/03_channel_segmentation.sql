-- Channel Performance Analysis

SELECT
  trafficSource.medium AS channel,
  COUNT(*) AS sessions,
  SUM(IF(totals.transactions >= 1, 1, 0)) AS purchasing_sessions,
  SAFE_DIVIDE(SUM(IF(totals.transactions >= 1, 1, 0)), COUNT(*)) AS purchase_rate
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY channel
ORDER BY purchase_rate DESC;
