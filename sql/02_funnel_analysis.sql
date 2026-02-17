-- 02: Funnel conversion by session (home -> product -> cart -> purchase)

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
