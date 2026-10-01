{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
-- 列顺序 (id, name, note)，note 是 varchar(10) 且含 9 个字符的值
select cast(3 as bigint) as id, cast('c' as string) as name, cast('ccccccccc' as varchar(10)) as note
union all
select cast(4 as bigint), cast('d' as string), cast('dddd' as varchar(10))

-- A2 精度上界：若 union_relations 不加宽，服务端静默截断（探针 P9/Q15）
