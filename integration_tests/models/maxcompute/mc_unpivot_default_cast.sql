{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
-- 不传 cast_to：默认值 'varchar' 在 MaxCompute 不可执行（探针 P8/Q3：ODPS-0130161 invalid token ')'）
{{ dbt_utils.unpivot(
    relation=ref('mc_src_unpivot'),
    exclude=['id'],
    field_name='prop',
    value_name='val'
) }}

-- A3 缺陷重现点：unpivot 默认 cast_to
