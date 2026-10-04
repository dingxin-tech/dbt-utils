{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select cast('S' as string) as size, cast('red' as string) as color
union all
select cast('S' as string), cast('red' as string)
union all
select cast('S' as string), cast('blue' as string)
union all
select cast('S' as string), cast(null as string)
union all
select cast('M' as string), cast('blue' as string)
union all
select cast('M' as string), cast(null as string)

-- A2 pivot 的 color 含 NULL
