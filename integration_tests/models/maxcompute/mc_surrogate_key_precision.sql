{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select
    {{ dbt_utils.generate_surrogate_key(['d_dec', 'd_dbl']) }} as key_wider_scale,
    {{ dbt_utils.generate_surrogate_key(['d_dec_narrow', 'd_dbl']) }} as key_narrower_scale
from (
    select cast('12.340' as decimal(10,3)) as d_dec,
           cast('12.34' as decimal(10,2)) as d_dec_narrow,
           cast(12.34 as double) as d_dbl
) t

-- A2 精度边界：decimal scale 不同的同值，字符串渲染是否一致（探针 R5）
