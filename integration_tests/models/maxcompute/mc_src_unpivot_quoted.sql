{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select cast(123 as bigint) as Customer_Id, cast('2017-01-01' as string) as Created_At,
       cast('active' as string) as sTaTuS, cast('tier 1' as string) as SEGMENT, cast('name 1' as string) as Name
union all
select cast(234 as bigint), cast('2017-02-01' as string), cast('active' as string), cast('tier 3' as string), cast('name 3' as string)
union all
select cast(567 as bigint), cast('2017-03-01' as string), cast('churned' as string), cast('tier 2' as string), cast('name 2' as string)

-- 列名混合大小写，服务端一律折叠为小写
