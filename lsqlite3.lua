local sqlite3 = {}

--------------------------------------------------------------------------------
--- @class sqlite3.Statement
local Statement = {}

--- Binds the given values to statement parameters. The function returns
--- sqlite3.OK on success or else a numerical error code
--- (see Numerical error and result codes).
--- @vararg any
--- @return number
function Statement:bind_values(...) end

--- This function frees prepared statement stmt. If the statement was executed
--- successfully, or not executed at all, then sqlite3.OK is returned.
--- If execution of the statement failed then an error code is returned.
function Statement:finalize() end

--------------------------------------------------------------------------------
--- @class sqlite3.Database
local Database = {}

--- @param sql string Sql query
--- @return sqlite3.Statement
function Database:prepare(sql) end

--------------------------------------------------------------------------------
--- Returns true if the string sql comprises one or more
--- complete SQL statements and false otherwise.
--- @param sql string
--- @return boolean
function sqlite3.complete(sql) end

--- Opens (or creates if it does not exist) an SQLite database with
--- name filename and returns its handle as userdata (the returned object
--- should be used for all further method calls in connection with this
--- specific database, see Database methods).
--- @param filename string Filename
--- @return sqlite3.Database
function sqlite3.open(filename) end


return sqlite3
