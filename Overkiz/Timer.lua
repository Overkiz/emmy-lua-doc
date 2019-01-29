local Timer = {}

---@class Overkiz.Timer.Monotonic
---@field public expired fun():void
local Monotonic = {}

---@return Overkiz.Timer.Monotonic
function Timer.Monotonic() end

--- Start the timer.
function Monotonic:start() end

--- Stop the timer.
function Monotonic:stop() end

---@param time Overkiz.Time.Elapsed
---@param absolute boolean
---@overload fun(time: Overkiz.Time.Elapsed)
function Monotonic:setTime(time, absolute) end

return Timer
