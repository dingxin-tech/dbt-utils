{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
-- 上游同名用例（test_unpivot_quote）在 MaxCompute 上比不过：服务端元数据把标识符折叠成小写，
-- field_name 取的是元数据列名，因此 'sTaTuS' 会变成 'status'。这里用小写期望把该行为钉成契约。
{{ dbt_utils.unpivot(
    relation=ref('mc_src_unpivot_quoted'),
    cast_to=dbt.type_string(),
    exclude=['Customer_Id', 'Created_At'],
    remove=['Name'],
    field_name='Prop',
    value_name='Val',
    quote_identifiers=True,
) }}

-- A2 大小写/引号边界（替换上游 test_unpivot_quote 的 MaxCompute 判定）
