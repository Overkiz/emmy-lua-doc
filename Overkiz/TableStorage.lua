--- @class Overkiz.TableStorage
local TableStorage = {}

--- @param prefix string
--- @param batchmode boolean
--- @overload fun(prefix: string)
function TableStorage:new(prefix, batchmode) end

function TableStorage.pairs(table) end

-- Get a subtable from root table, any level supported
function TableStorage.subStorage(table, subkey, batchmode) end

function TableStorage.flush(table) end

function TableStorage.finalize(table) end

return TableStorage
