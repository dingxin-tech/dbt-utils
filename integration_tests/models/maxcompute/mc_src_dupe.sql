{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select cast(1 as bigint) as id, cast('dup' as string) as name
union all
select cast(2 as bigint), cast('dup' as string)
union all
select cast(2 as bigint), cast('dup' as string)

-- A2 重复键：id 有重复，name 全部相同
