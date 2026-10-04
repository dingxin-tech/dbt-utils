{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select
    size,
    {{ dbt_utils.pivot('color', ['red', 'blue'], cmp='=') }}
from {{ ref('mc_src_pivot') }}
group by size

-- A1 pivot × A2 NULL：NULL 行不进任何值列
