local path = {}

--- return the path resulting from combining the individual paths.
--- if the second (or later) path is absolute, we return the last absolute path (joined with any non-absolute paths following).
--- empty elements (except the last) will be ignored.
--- @param p1 string A file path
--- @param p2 string A file path
--- @vararg string @more file paths
function path.join(p1, p2, ...) end


return path
