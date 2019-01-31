local stringx = {}

---does s start with prefix or one of prefixes?
---@param s table
---@param prefix string
function stringx.startswith(s, prefix)

end

--- split a string into a list of strings using a delimiter.
--- @overload fun(s: string):pl.List
--- @overload fun(s: string, re: string):pl.List
--- @param s string the string
--- @param re string a delimiter (defaults to whitespace)
--- @param n number maximum number of results
--- @return pl.List
function stringx.split(s,re,n)

end


return stringx
