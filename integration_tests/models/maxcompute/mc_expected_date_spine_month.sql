{{ config(tags=['maxcompute']) }}
select cast(date'2026-01-31' as date) as date_month
union all
    select cast(date'2026-02-28' as date) as date_month
union all
    select cast(date'2026-03-31' as date) as date_month

-- 行数=datediff(...,'month')=3；逐期 dateadd 夹紧（探针 R8/R9/R10）；右端点不含
