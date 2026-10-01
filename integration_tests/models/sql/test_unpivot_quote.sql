{{ config(enabled=(target.type != 'maxcompute')) }}
-- MaxCompute 把标识符折叠成小写：unpivot 的 field_name 取的是服务端元数据列名，
-- 'sTaTuS'/'SEGMENT' 在这里会变成 'status'/'segment'，与本用例的大小写敏感期望不符。
-- 该差异由 integration_tests/models/maxcompute/mc_unpivot_quoted.sql +
-- mc_expected_unpivot_quoted.sql 按 MaxCompute 语义正向覆盖，不在这里放宽断言。

{{ dbt_utils.unpivot(
        relation=ref('data_unpivot_quote'),
        cast_to=type_string(),
        exclude=['Customer_Id', 'Created_At'],
        remove=['Name'],
        field_name='Prop',
        value_name='Val',
        quote_identifiers=True,
    ) }}
