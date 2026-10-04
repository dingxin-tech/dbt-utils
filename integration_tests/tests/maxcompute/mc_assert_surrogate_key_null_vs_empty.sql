{{ config(tags=['maxcompute']) }}
select 'null_equals_empty_string' as contract_violation, key_null, key_empty
from {{ ref('mc_surrogate_key_null_vs_empty') }}
where key_null = key_empty
