{{ config(tags=['maxcompute']) }}
-- 钉住（而非修复）上游语义：'x-y' 单字段与 ('x','y') 两字段同键。
-- 这不是 MaxCompute 差异，改分隔符会破坏跨引擎的键稳定性；因此写进 README 而不是改宏。
select 'collision_not_as_documented' as contract_violation, key_single, key_pair
from {{ ref('mc_surrogate_key_boundary') }}
where key_single != key_pair
