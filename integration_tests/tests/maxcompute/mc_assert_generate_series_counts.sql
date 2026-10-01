{{ config(tags=['maxcompute']) }}
select case_id, 'row_count' as contract_violation, actual_cnt, expected_cnt
from {{ ref('mc_generate_series_counts') }}
where actual_cnt != expected_cnt
