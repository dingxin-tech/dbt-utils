{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select
    size,
    {{ dbt_utils.pivot('color', ['red', 'blue'], cmp='=') }}
from {{ ref('mc_src_pivot_empty') }}
group by size

-- A2 空表 pivot
