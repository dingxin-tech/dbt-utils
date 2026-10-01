{{ config(tags=['maxcompute']) }}
select cast('M' as string) as size, cast(0 as bigint) as red, cast(1 as bigint) as blue
union all
    select cast('S' as string) as size, cast(2 as bigint) as red, cast(1 as bigint) as blue

-- 期望由 Python 计数：S=(2,1)，M=(0,1)；NULL 两边都不计
