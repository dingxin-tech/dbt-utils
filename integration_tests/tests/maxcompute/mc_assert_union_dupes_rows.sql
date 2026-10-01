{{ config(tags=['maxcompute']) }}
-- 契约：union all 不去重（3 x 2 = 6 行，重复行全在）
select 'row_count' as contract_violation, actual_rows, distinct_rows
from (
    select count(*) as actual_rows, count(distinct id) as distinct_rows
    from {{ ref('mc_union_dupes') }}
) counted
where actual_rows != 6 or distinct_rows != 2

-- A2 重复键
