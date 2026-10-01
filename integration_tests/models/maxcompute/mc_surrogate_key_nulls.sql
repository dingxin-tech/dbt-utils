{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select
    tagged.row_id,
    {{ dbt_utils.generate_surrogate_key(['tagged.k', 'tagged.s', 'tagged.d']) }} as actual_key
from (
    select 'sk_1' as row_id, k, s, d from {{ ref('mc_src_nulls') }} where k = 1
    union all
    select 'sk_2', k, s, d from {{ ref('mc_src_nulls') }} where k = 2
    union all
    select 'sk_3', k, s, d from {{ ref('mc_src_nulls') }} where k = 3
    union all
    select 'sk_4', k, s, d from {{ ref('mc_src_nulls') }} where k = -3
) tagged

-- A1 surrogate key × A2 NULL
