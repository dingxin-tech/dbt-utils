{{ config(tags=['maxcompute']) }}
-- 契约：值列总数 = 非 NULL 行数（2+1+1 = 4），NULL 两行不贡献
select 'null_counted' as contract_violation, matched_rows
from (
    select sum(red) + sum(blue) as matched_rows
    from {{ ref('mc_pivot_null_color') }}
) counted
where matched_rows != 4
