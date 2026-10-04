{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select cast(1 as bigint) as k, cast(null as string) as s, cast(1.5 as double) as d
union all
select cast(2 as bigint), cast('' as string), cast(null as double)
union all
select cast(3 as bigint), cast('_dbt_utils_surrogate_key_null_' as string), cast(0.0 as double)
union all
select cast(-3 as bigint), cast('x' as string), cast(null as double)

-- A2 NULL + 哨兵字面量 + 负数
