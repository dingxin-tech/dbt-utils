{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select cast('0.1234' as decimal(10,4)) as v
union all
select cast('0.1235' as decimal(10,4))

-- precision=2 对照的左表（0.1234 / 0.1235）
