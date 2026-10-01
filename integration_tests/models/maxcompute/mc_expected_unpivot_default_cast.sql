{{ config(tags=['maxcompute']) }}
select cast(1 as bigint) as id, cast('status' as string) as prop, cast('active' as string) as val
union all
    select cast(1 as bigint), cast('segment' as string), cast(null as string)
union all
    select cast(1 as bigint), cast('is_open' as string), cast('true' as string)
union all
    select cast(2 as bigint), cast('status' as string), cast('churned' as string)
union all
    select cast(2 as bigint), cast('segment' as string), cast('tier 2' as string)
union all
    select cast(2 as bigint), cast('is_open' as string), cast('false' as string)

-- 布尔走 dbt.cast_bool_to_text()，MaxCompute 实现 tolower(cast(x as string)) → 'true'/'false'；NULL 保留
