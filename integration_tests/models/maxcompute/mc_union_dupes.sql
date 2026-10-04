{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
{{ dbt_utils.union_relations([
    ref('mc_src_dupe'), ref('mc_src_dupe')
], source_column_name=none) }}

-- A2 重复键：同一关系出现两次，行数与重复度都必须保留
