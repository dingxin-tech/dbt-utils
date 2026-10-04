{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
-- 列顺序 (note, name, id)，且 note 只有 varchar(5)
select cast(1 as bigint) as id, cast('a' as string) as name, cast('aaaaa' as varchar(5)) as note
union all
select cast(2 as bigint), cast('b' as string), cast('bbbbb' as varchar(5))

-- A2 列顺序差异 + 精度（宽度）下界
