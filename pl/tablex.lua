local tablex = {}

--- Compare two values.
--- If they are tables, then compare their keys and fields recursively.
--- @param t1 table A value
--- @param t2 table A value
--- @param ignore_mt boolean if true, ignore __eq metamethod (default false)
--- @param eps number if defined, then used for any number comparisons
--- @return boolean
--- @overload fun(t1: table, t2: table)
--- @overload fun(t1: table, t2: table, ignore_mt:boolean)
function tablex.deepcompare(t1, t2 ,ignore_mt, eps) end

return tablex
