--- @class pl_pretty
local pretty = {}

--- Read a string representation of a Lua table.
--- This function loads and runs the string as Lua code, but bails out
--- if it contains a function definition.
--- Loaded string is executed in an empty environment.
---@param s string
---@return table | (nil,string) a table in case of success. If loading the string failed, return `nil` and error message. If executing loaded string failed, return `nil` and the error it raised.
function pretty.read(s) end

--- Read a Lua chunk.
---@param s string
---@param env table
---@param paranoid boolean
---@overload fun(s:string):table|nil
---@overload fun(s:string, env:table):table|nil
---@return table|nil the environment in case of success or `nil` and syntax or runtime error if something went wrong.
function pretty.load(s, env, paranoid) end

--- Create a string representation of a Lua table.
--- This function never fails, but may complain by returning an
--- extra value. Normally puts out one item per line, using
--- the provided indent; set the second parameter to an empty string
--- if you want output on one line.
---
--- *NOTE:* this is NOT a serialization function, not a full blown debug function.
---@param tbl table
---@param space string
---@param not_clever boolean
---@overload fun(tbl:table):string | (string,string)
---@overload fun(tbl:table, space:string): string | (string,string)
---@return string | (string,string)
function pretty.write(tbl, space, not_clever) end

--- Dump a Lua table out to a file or stdout.
---@param t table
---@param filename string
---@overload fun(t:table):true
---@return boolean
function pretty.dump(t, filename) end

--- Dump a series of arguments to stdout for debug purposes.
--- This function is attached to the module table `__call` method, to make it
--- extra easy to access. So the full:
---
---     print(require("pl.pretty").write({...}))
---
--- Can be shortened to:
---
---     require"pl.pretty" (...)
---
--- Any `nil` entries will be printed as `"<nil>"` to make them explicit.

--- -- example debug output
--- require"pl.pretty" ("hello", nil, "world", { bye = "world", true} )
---
--- -- output:
--- {
---   ["arg 1"] = "hello",
---   ["arg 2"] = "<nil>",
---   ["arg 3"] = "world",
---   ["arg 4"] = {
---     true,
---     bye = "world"
---   }
--- }
function pretty.debug(...) end

--- Format large numbers nicely for human consumption.
---@param num number
---@param kind "M"|"N"|"T" @'M' (memory in KiB, MiB, etc.), 'N' (postfixes are 'K', 'M' and 'B'), or 'T' (use commas as thousands separator), 'N' by default. (optional)
---@param prec number @int number of digits to use for 'M' and 'N', 1 by default. (optional)
---@overload fun(num:number):string
---@overload fun(num:number, kind:"M"|"N"|"T"):string
---@return string
function pretty.number(num, kind, prec) end

return pretty
