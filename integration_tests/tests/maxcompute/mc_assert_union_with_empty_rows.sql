{{ config(tags=['maxcompute']) }}
-- 契约：空表参与 union 不增不减行
select 'row_count' as contract_violation, actual_rows
from (
    select count(*) as actual_rows
    from {{ ref('mc_union_with_empty') }}
) counted
where actual_rows != 2
