local tablex = require "pl.tablex"

---@class pl_Map
---A Map class.
---
--- > Map = require 'pl.Map'
--- > m = Map{one=1,two=2}
--- > m:update {three=3,four=4,two=20}
--- > = m == M{one=1,two=20,three=3,four=4}
--- true
--- Dependencies: pl.utils, pl.class, pl.tablex, pl.pretty
---@generic K, V
---@overload fun():pl_Map
---@overload fun(tbl:table):pl_Map
local Map = {}

Map.keys = tablex.keys
Map.values = tablex.values

--- return an iterator over all key-value pairs.
function Map:iter() return pairs({}) end

--- return a List of all key-value pairs, sorted by the keys.
---@return pl_List
function Map:items() end

--- size of map.
---@return number
function Map:len() end

--- put a value into the map.
---@param key any
---@param value any
function Map:set(key, value) end

--- get a value from the map.
---@param key any
---@return any
function Map:get(key) end

--- get a list of values indexed by a list of keys.
---@return any[]
---@param keys table
function Map:getvalues(keys) end

--- update the map using key/value pairs from another table.
---@param tbl table
function Map:update(tbl) end

---@return boolean
function Map:__eq() end

---@return string
function Map:__tostring() end

return Map
