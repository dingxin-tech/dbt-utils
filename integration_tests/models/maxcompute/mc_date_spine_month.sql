{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
{{ dbt_utils.date_spine("month", "DATE'2026-01-31'", "DATE'2026-04-30'") }}

-- A1 date_spine × A2 月末夹紧
