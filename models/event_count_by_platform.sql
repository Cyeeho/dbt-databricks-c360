{{
   config(materialized = 'table', file_format = 'delta')
}}

SELECT
  platform,
  COUNT(event_id) as events
FROM
  dbdemos.dbt_c360_bronze_events
GROUP BY
  platform;