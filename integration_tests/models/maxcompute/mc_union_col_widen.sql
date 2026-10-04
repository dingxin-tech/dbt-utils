{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
-- 窄表在前：加宽必须取两侧上界，而不是"取第一个见到的类型"
{{ dbt_utils.union_relations([
    ref('mc_src_narrow'), ref('mc_src_wide')
]) }}

-- A1 union_relations × A2 列顺序差异 + 宽度上界
