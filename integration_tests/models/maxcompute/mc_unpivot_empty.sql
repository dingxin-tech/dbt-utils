{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
{{ dbt_utils.unpivot(
    relation=ref('mc_src_pivot_empty'),
    cast_to=dbt.type_string(),
    exclude=['size'],
    field_name='prop',
    value_name='val'
) }}

-- A2 空表 unpivot
