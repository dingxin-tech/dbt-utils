{{ config(tags=['maxcompute']) }}
select 'row_count' as contract_violation, actual_rows
from (
    select count(*) as actual_rows
    from {{ ref('mc_unpivot_empty') }}
) counted
where actual_rows != 0
