local types = {}

--------------------------------------------------------------------------------
---@class tableshape.Shape
local Shape = {}

---@param value any The value to check
---@return boolean
---@return string|nil error message
function Shape:check_value(value) end

--------------------------------------------------------------------------------
---@return tableshape.Shape
---@param shape_desc any The shape description
function types.shape(shape_desc) end

return {
  types = types
}
