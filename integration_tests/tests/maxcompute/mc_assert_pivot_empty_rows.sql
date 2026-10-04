{{ config(tags=['maxcompute']) }}
select 'row_count' as contract_violation, actual_rows
from (
    select count(*) as actual_rows
    from {{ ref('mc_pivot_empty_input') }}
) counted
where actual_rows != 0
