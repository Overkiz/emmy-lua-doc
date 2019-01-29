---@class Overkiz.Json.JsonParser
local JsonParser = {}

---@param value any
---@return string the json encoded value
function JsonParser:encode(value) end

---@param json string The json string
---@return any The decoded value
function JsonParser:decode(json) end

return JsonParser
