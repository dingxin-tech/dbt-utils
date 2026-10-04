{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select 'n_1' as case_id, count(*) as actual_cnt, cast(1 as bigint) as expected_cnt
from ({{ dbt_utils.generate_series(1) }}) one_row
union all
select 'n_4', count(*), cast(4 as bigint)
from ({{ dbt_utils.generate_series(4) }}) power_of_two
union all
select 'n_5', count(*), cast(5 as bigint)
from ({{ dbt_utils.generate_series(5) }}) not_power_of_two

-- A2 下界 1、正好 2^2、非 2 的幂
