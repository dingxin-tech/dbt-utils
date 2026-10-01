{{ config(tags=['maxcompute']) }}
{{ config(tags=['maxcompute']) }}
select size, color
from (
    select cast('S' as string) as size, cast('red' as string) as color
) seeded
where 1 = 0

-- A2 pivot/unpivot 的空输入
