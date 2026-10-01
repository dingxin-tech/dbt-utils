{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select cast('0.1234' as decimal(10,4)) as v
union all
select cast('0.1236' as decimal(10,4))

-- precision=2 对照的右表（0.1234 / 0.1236）
