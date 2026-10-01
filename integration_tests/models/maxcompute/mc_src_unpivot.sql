{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select cast(1 as bigint) as id, cast('active' as string) as status,
       cast(null as string) as segment, cast(true as boolean) as is_open
union all
select cast(2 as bigint), cast('churned' as string), cast('tier 2' as string), cast(false as boolean)

-- A2 NULL + 布尔 + 混合类型
