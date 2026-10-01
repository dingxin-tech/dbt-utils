{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
{{ dbt_utils.union_relations([
    ref('mc_src_wide'), ref('mc_src_empty')
]) }}

-- A2 空表参与 union
