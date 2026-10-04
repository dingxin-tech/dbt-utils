{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select
    {{ dbt_utils.generate_surrogate_key(['k_null', 's']) }} as key_null,
    {{ dbt_utils.generate_surrogate_key(['k_empty', 's_empty']) }} as key_empty
from (
    select cast(1 as bigint) as k_null, cast(null as string) as s,
           cast(1 as bigint) as k_empty, cast('' as string) as s_empty
) t

-- A2 NULL vs 空串必须是不同键
