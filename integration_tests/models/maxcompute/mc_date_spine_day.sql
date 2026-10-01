{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
{{ dbt_utils.date_spine("day", "DATE'2026-02-26'", "DATE'2026-03-03'") }}

-- 跨月日的 day spine
