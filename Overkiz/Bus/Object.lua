local Object = {}

--------------------------------------------------------------------------------
---@class Overkiz.Bus.Object.Server
---@field public expired fun():void
local Server = {}

---@param message Overkiz.Bus.Message.Method.Return
function Server:send(message) end

---@return Overkiz.Bus.Object.Server
---@param path string Server path
function Object.Server(path) end

--------------------------------------------------------------------------------
---@class Overkiz.Bus.Object.Iterator
local Iterator = {}

---@param type string The type to get
---@return any
function Iterator:get(type) end

---@param type string
---@param value any
function Iterator:push(type, value) end

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

return Object
