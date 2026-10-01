{{ config(tags=['maxcompute']) }}
-- 契约：NULL 走哨兵、其余按 cast(x as string) 渲染，服务端 md5 与本地独立计算一致
select coalesce(a.row_id, e.row_id) as row_id,
       'key_mismatch' as contract_violation,
       case when a.actual_key is null then 'missing_in_actual'
            when e.expected_key is null then 'missing_in_expected'
            else 'value_differs' end as which_side
from {{ ref('mc_surrogate_key_nulls') }} a
full outer join {{ ref('mc_expected_surrogate_key_nulls') }} e
    on a.row_id = e.row_id
where a.actual_key is null
   or e.expected_key is null
   or a.actual_key != e.expected_key
