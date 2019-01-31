--- @class Overkiz.Log
local Log = {}

--- @param msg string log message
function Log:debug(msg) end

--- @param msg string log message
function Log:error(msg) end

--- @param msg string log message
function Log:warning(msg) end
---
--- @param msg string log message
function Log:info(msg) end

--- @param msg string log message
function Log:notice(msg) end

--- @param msg string log message
function Log:critical(msg) end

--- @param msg string log message
function Log:fatal(msg) end

return Log
