-- See https://github.com/zhaozg/lua-openssl

local openssl = {}

---@overload fun(input:string):string
---@overload fun(input:string, encode:boolean):string
---@param input string @string or bio
---@param encode boolean @true to encode, false to decode (default true)
---@param NO_NL boolean @true with newline, false without newline (default true)
---@return string
function openssl.base64(input, encode, NO_NL) end

return openssl