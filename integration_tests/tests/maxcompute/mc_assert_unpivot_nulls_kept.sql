{{ config(tags=['maxcompute']) }}
-- 契约：NULL 不丢行，行数 = 列数 x 行数；NULL 值行必须存在
select 'row_count' as contract_violation, actual_rows, null_rows
from (
    select count(*) as actual_rows,
           sum(case when val is null then 1 else 0 end) as null_rows
    from {{ ref('mc_unpivot_default_cast') }}
) counted
where actual_rows != 6 or null_rows != 1
