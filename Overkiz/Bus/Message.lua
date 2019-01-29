local Message = {}

--------------------------------------------------------------------------------
---@class Overkiz.Bus.Message.Method
local Method = {}

---@param call Overkiz.Bus.Object.Call
---@return Overkiz.Bus.Message.Method.Return
function Method.Return(call) end

--- @return Overkiz.Bus.Message.Method.Call
function Method.Call() end

--------------------------------------------------------------------------------
---@class Overkiz.Bus.Message.Method.Return
local Return = {}

---@return Overkiz.Bus.Object.Iterator
function Return:begin() end

--------------------------------------------------------------------------------
---@class Overkiz.Bus.Message.Method.Call
local Call = {}

---@param member string The signal name
function Call:setMember(member) end

---@param interface string The interface name
function Call:setInterface(interface) end

---@return Overkiz.Bus.Object.Iterator
function Call:begin() end

--------------------------------------------------------------------------------
---@class Overkiz.Bus.Message.Signal
local Signal = {}

---@param member string The signal name
function Signal:setMember(member) end

---@param interface string The interface name
function Signal:setInterface(interface) end

---@return Overkiz.Bus.Object.Iterator
function Signal:begin() end

return {
  Method = Method,
  Signal = Signal,
}
