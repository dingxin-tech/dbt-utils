{{ config(tags=['maxcompute']) }}
select cast(123 as bigint) as Customer_Id, cast('2017-01-01' as string) as Created_At, cast('segment' as string) as Prop, cast('tier 1' as string) as Val
union all
    select cast(123 as bigint), cast('2017-01-01' as string), cast('status' as string), cast('active' as string)
union all
    select cast(234 as bigint), cast('2017-02-01' as string), cast('segment' as string), cast('tier 3' as string)
union all
    select cast(234 as bigint), cast('2017-02-01' as string), cast('status' as string), cast('active' as string)
union all
    select cast(567 as bigint), cast('2017-03-01' as string), cast('status' as string), cast('churned' as string)
union all
    select cast(567 as bigint), cast('2017-03-01' as string), cast('segment' as string), cast('tier 2' as string)

-- 期望：Prop 取服务端元数据里的小写列名；标识符大小写不敏感是引擎语义
