{{ config(tags=['maxcompute']) }}
-- 契约：union_relations 的 varchar 取上界，最长值不被静默截断（探针 P9/Q15 证明截断是无感的）
select 'widening_not_applied' as contract_violation, max_len
from (
    select max(length(note)) as max_len
    from {{ ref('mc_union_col_widen') }}
) measured
where max_len != 9

-- A2 精度边界
