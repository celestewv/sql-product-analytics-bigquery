-- 02_funnel_analysis.sql
-- Business Question:
-- Where do users drop off in the checkout funnel?
--
-- Method:
-- 1. Reconstruct session-level user journeys.
-- 2. Identify whether each session saw key steps:
--    home → basket → payment → purchase.
-- 3. Calculate conversion rates between each step.
--
-- Why it matters:
-- Funnel drop-off reveals friction points in the purchase journey.
-- Improving the weakest step increases overall conversion rate.


WITH session_steps AS (
  SELECT
    CONCAT(fullVisitorId, '-', CAST(visitId AS STRING)) AS session_id,

    MAX(IF(h.page.pagePath = '/home', 1, 0)) AS saw_home,
    MAX(IF(h.page.pagePath = '/basket.html', 1, 0)) AS saw_basket,
    MAX(IF(h.page.pagePath = '/payment.html', 1, 0)) AS saw_payment,
    MAX(IF(totals.transactions >= 1, 1, 0)) AS purchased

  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
  UNNEST(hits) AS h
  WHERE h.type = 'PAGE'
  GROUP BY session_id
)

SELECT
  COUNT(*) AS sessions,
  SUM(saw_home) AS home_sessions,
  SUM(saw_basket) AS basket_sessions,
  SUM(saw_payment) AS payment_sessions,
  SUM(purchased) AS purchase_sessions,

  SAFE_DIVIDE(SUM(saw_basket), SUM(saw_home)) AS home_to_basket_rate,
  SAFE_DIVIDE(SUM(saw_payment), SUM(saw_basket)) AS basket_to_payment_rate,
  SAFE_DIVIDE(SUM(purchased), SUM(saw_payment)) AS payment_to_purchase_rate

FROM session_steps;
