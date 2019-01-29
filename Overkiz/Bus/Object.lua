local Object = {}

--------------------------------------------------------------------------------
---@class Overkiz.Bus.Object.Server
---@field public expired fun():void
local Server = {}

---@param message Overkiz.Bus.Message.Method.Return
function Server:send(message) end

--------------------------------------------------------------------------------
---@class Overkiz.Bus.Object.Iterator
local Iterator = {}

---@param type string The type to get
---@return any
function Iterator:get(type) end

---@param type string
---@param value any
function Iterator:push(type, value) end

--- Open a sub iterator.
--- @return Overkiz.Bus.Object.Iterator
--- @param type string
--- @param subIter Overkiz.Bus.Object.Iterator
--- @overload fun()
function Iterator:begin(type, subIter) end

--- @return boolean
function Iterator:valid() end

--------------------------------------------------------------------------------
---@class Overkiz.Bus.Object.Call
local Call = {}

---@return string Get DBus interface
function Call:getInterface() end

---@return string Get DBus signature
function Call:getSignature() end

---@return Overkiz.Bus.Object.Iterator Get en iterator
function Call:constbegin() end

---@return string
function Call:getMember() end

---@return boolean
function Call:isException() end

--------------------------------------------------------------------------------
---@class Overkiz.Bus.Object.Proxy
local Proxy = {}

---@param call Overkiz.Bus.Message.Method.Call
---@param retCallback fun(id: string, message: Overkiz.Bus.Object.Call)
---@return Overkiz.Bus.Object.Call
---@overload fun(call: Overkiz.Bus.Message.Method.Call)
function Proxy:send(call, retCallback) end

--------------------------------------------------------------------------------
---@param path string Server path
---@return Overkiz.Bus.Object.Server
function Object.Server(path) end

---@return Overkiz.Bus.Object.Call
function Object.Call() end

---@param path string Server path
---@param interface string
---@return Overkiz.Bus.Object.Proxy
function Object.Proxy(path, interface) end

return Object
