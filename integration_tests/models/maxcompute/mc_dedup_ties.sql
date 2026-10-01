{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
-- 重复键 + order_by 取值相同：每个键恰好 1 行（tie 时留哪行不保证，行数必须保证）
{{ dbt_utils.deduplicate(
    relation=ref('mc_src_dupe'),
    partition_by='id',
    order_by='name') }}

-- A2 重复键（已有 MaxCompute dispatch 的用例）
