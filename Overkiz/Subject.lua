--- @class Overkiz.Subject
local Subject = {}

--- @class Overkiz.Listener
--- @field public notified fun(...)
local Listener = {}

--- @vararg any @args to be send to listener
function Subject:notify(...) end

--- @param listener fun(...)|Overkiz.Listener
--- @return number listener index (used to remove listener)
function Subject:addListener(listener) end

--- @param listener number|Overkiz.Listener
function Subject:removeListener(listener) end

return Subject
