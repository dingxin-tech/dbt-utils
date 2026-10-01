{{ config(tags=['maxcompute']) }}
select cast(date'2026-02-26' as date) as date_day
union all
    select cast(date'2026-02-27' as date) as date_day
union all
    select cast(date'2026-02-28' as date) as date_day
union all
    select cast(date'2026-03-01' as date) as date_day
union all
    select cast(date'2026-03-02' as date) as date_day

-- 5 行：02-26..03-02（右端点 03-03 不生成）
