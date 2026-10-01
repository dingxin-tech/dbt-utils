{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select
    {{ dbt_utils.generate_surrogate_key(['a']) }} as key_single,
    {{ dbt_utils.generate_surrogate_key(['b', 'c']) }} as key_pair
from (select cast('x-y' as string) as a, cast('x' as string) as b, cast('y' as string) as c) t

-- 已知上游语义：'-' 连接不消除字段边界歧义
