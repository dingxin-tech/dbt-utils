{{ config(tags=['maxcompute']) }}
select 'sk_1' as row_id, '74ccd3b682393156d106f795fc2c6611' as expected_key
union all
    select 'sk_2' as row_id, '39023fc9696fb38ead2a321a1a736d03' as expected_key
union all
    select 'sk_3' as row_id, '8e8c76a9c1e6002b08d4792f52fce41b' as expected_key
union all
    select 'sk_4' as row_id, 'ebbf2415f726f557bea41dcbd2ba0812' as expected_key

-- 期望由 gen_maxcompute_suite.py 用 hashlib.md5 独立算出；渲染规则见探针 R1/R2/R3
