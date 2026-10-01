{{ config(tags=['maxcompute']) }}
-- 契约（钉住渲染语义）：decimal(10,3) '12.340' 与 decimal(10,2) '12.34' 渲染相同 → 键相同
select 'precision_render_differs' as contract_violation, key_wider_scale, key_narrower_scale
from {{ ref('mc_surrogate_key_precision') }}
where key_wider_scale != key_narrower_scale
