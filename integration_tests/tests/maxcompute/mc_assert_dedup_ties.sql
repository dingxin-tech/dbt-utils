{{ config(tags=['maxcompute']) }}
select 'row_count' as contract_violation, actual_rows, distinct_keys
from (
    select count(*) as actual_rows, count(distinct id) as distinct_keys
    from {{ ref('mc_dedup_ties') }}
    where rn = 1
) counted
where actual_rows != distinct_keys or actual_rows != 2
