{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select id, name, note
from (
    select cast(1 as bigint) as id, cast('x' as string) as name, cast('x' as varchar(10)) as note
) seeded
where 1 = 0

-- A2 空表：列在、行数为 0
