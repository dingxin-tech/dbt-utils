{{ config(tags=['maxcompute']) }}
-- 对照：两个只差第 4 位小数的集合，严格比较必须报差异
-- （schema.yml 里同一对表带 precision=2 的 equality 应当通过，两者合起来才说明 round 生效）
select 'strict_diff_empty' as contract_violation, diff_rows
from (
    select count(*) as diff_rows
    from (
        select v from {{ ref('mc_precision_source') }}
        except
        select v from {{ ref('mc_precision_expected') }}
    ) d
) counted
where diff_rows = 0
