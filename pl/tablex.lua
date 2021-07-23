local tablex = {}

--- Compare two values.
--- If they are tables, then compare their keys and fields recursively.
--- @overload fun(t1: table, t2: table)
--- @overload fun(t1: table, t2: table, ignore_mt:boolean)
--- @param t1 table @ A value
--- @param t2 table @ A value
--- @param ignore_mt boolean if true, ignore __eq metamethod (default false)
--- @param eps number if defined, then used for any number comparisons
--- @return boolean
function tablex.deepcompare(t1, t2, ignore_mt, eps) end

--- return all the keys of a table in arbitrary order.
---@param t table
---@return any[]
function tablex.keys(t) end

--- return all the values of the table in arbitrary order.
---@param t table
---@return any[]
function tablex.values(t) end

--- make a shallow copy of a table.
---@param t table
---@return table
function tablex.copy(t) end

--- make a deep copy of a table, recursively copying all the keys and fields.
---@param t table
---@return table
function tablex.deepcopy(t) end

--- copy a table into another, in-place.
---@param t1 table
---@param t2 table
---@return table @ t1
function tablex.update(t1, t2) end

--- the union of two map-like tables. If there are duplicate keys, the second table wins.
--- @generic K, V
--- @param t1 table<K,V> @ A value
--- @param t2 table<K,V> @ A value
--- @return table<K,V>
function tablex.union(t1, t2) end

--- return the index of a value in a list.
--- @overload fun(t:table, val:any):(number|nil)
--- @param t table @ A list-like table
--- @param val any the value
--- @param idx number index to start; -1 means last element,etc (default 1)
--- @return number|nil index of value or nil if not found
function tablex.find(t, val, idx) end

--- return the index of a value in a list, searching from the end. Like string.find, there is an optional index to start searching, which can be negative.
--- @overload fun(t:table, val:any):(number|nil)
--- @param t table @ A list-like table
--- @param val any the value
--- @param idx number index to start; -1 means last element,etc (default 1)
--- @return number|nil index of value or nil if not found
function tablex.rfind(t, val, idx) end

--- return the index (or key) of a value in a table using a comparison function.
--- @generic K, V
--- @overload fun<K,V>(t:table<K,V>, cmp:fun(a:V, b:V):boolean):(K,boolean)
--- @param t table<K,V> @ A table
--- @param cmp fun(a:V, b:V):boolean @ A comparison function
--- @param arg any an optional second argument to the function
--- @return K,boolean
function tablex.find_if(t, cmp, arg) end

--- Total number of elements in this table.
--- Note that this is distinct from #t, which is the number of values in the array part;
--- This value will always be greater or equal. The difference gives the size of the hash part, for practical purposes.
--- Works for any object with a __pairs metamethod.
--- @param t table
--- @return number
function tablex.size(t) end

--- apply a function to all values of a table. This returns a table of the results.
--- Any extra arguments are passed to the function.
--- @generic K, V
--- @param fun fun(v:V, ...:any)
--- @param t table<K,V>
--- @vararg any
--- @return any[]
function tablex.map(fun, t, ...) end

--- apply a function to all values of a list. This returns a table of the results.
--- Any extra arguments are passed to the function.
--- @generic K, V
--- @param fun fun(v:V, ...:any)
--- @param t table<K,V>
--- @vararg any
--- @return any[]
function tablex.imap(fun, t, ...) end

--- apply a function to all elements of a table. The arguments to the function will be the value,
--- the key and finally any extra arguments passed to this function.
--- Note that the Lua 5.0 function table.foreach passed the key first.
--- @generic K, V
--- @param t table<K,V>
--- @param fun fun(v:V, ...:any)
--- @vararg any
function tablex.foreach(t, fun, ...) end

--- apply a function to all elements of a list-like table in order.
--- The arguments to the function will be the value, the index and finally any extra arguments passed to this function
--- @generic K, V
--- @param t table<K,V>
--- @param fun fun(v:V, ...:any)
--- @vararg any
function tablex.foreachi(t, fun, ...) end

return tablex
