{{ config(tags=['maxcompute']) }}
select cast(1 as bigint) as id, cast('a' as string) as name, cast('aaaaa' as varchar(10)) as note
union all
    select cast(2 as bigint), cast('b' as string), cast('bbbbb' as varchar(10))
union all
    select cast(3 as bigint), cast('c' as string), cast('ccccccccc' as varchar(10))
union all
    select cast(4 as bigint), cast('d' as string), cast('dddd' as varchar(10))

-- 列按名字对齐；note 取 varchar(10) 上界，9 字符值完整保留
