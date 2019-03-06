--- Path manipulation and file queries.
---
--- This is modelled after Python's os.path library (10.1); see @{04-paths.md|the Guide}.
--- @class pl.path
--- @field public is_windows boolean Are we running Windows ?
--- @field public sep string Path separator for this platform.
--- @field public dirsep string Separator for PATH for this platform.
local path = {}

--- Lua iterator over the entries of a given directory. Each time the iterator is called
--- with dir_obj it returns a directory entry's name as a string, or nil if there are no
--- more entries. You can also iterate by calling dir_obj:next(), and explicitly close the
--- directory before the iteration finished with dir_obj:close(). Raises an error if path
--- is not a directory.
--- @param path string
function path.dir(path) end

--- Creates a new directory. The argument is the name of the new directory.
--- @return boolean|nil, string|nil, number|nil true in case of success or nil, an error message, a system-dependent error code in case of error
function path.mkdir(path) end

--- Removes an existing directory. The argument is the name of the directory.
---- @return boolean|nil, string|nil, number|nil true in case of success or nil, an error message, a system-dependent error code in case of error
function path.rmdir(path) end

--- Returns a string with the current working directory or nil plus an error string.
---- @return string|nil, string|nil the current directory or nil, an error message
function path.currentdir() end

--- Changes the current working directory to the given path.
---- @return boolean|nil, string|nil true in case of success or nil, an optional error string
function path.chdir() end

--- Is this a directory ?
--- @param P string A file path
--- @return boolean true if its a directory
function path.isdir(P) end

--- Is this a file ?
--- @param P string A file path
--- @return boolean true if its a file
function path.isfile(P) end

--- Is this a symbolic link ?
--- @param P string A file path
--- @return boolean true if its a symbolic link
function path.islink(P) end

--- Return size of a file.
--- @param P string A file path
--- @return number The size of the file
function path.getsize(P) end

--- Does a path exist ?
--- @param P string A file path
--- @return string|boolean The file path if it exists, false otherwise
function path.exists(P) end

--- Return the time of last access as the number of seconds since the epoch.
--- @param P string A file path
--- @return number The number of seconds since the epoch
function path.getatime(P) end

--- Return the time of last modification.
--- @param P string A file path
--- @return number The time of last modification
function path.getmtime(P) end

--- Return the system's ctime.
--- @param P string A file path
--- @return number The system's ctime
function path.getctime(P) end

--- Given a path, return the directory part and a file part.
--- If there's no directory part, the first value will be empty.
--- @param P string A file path
--- @return string|nil, string The directory part or nil, the file part
function path.splitpath(P) end

--- Return an absolute path.
--- @param P string A file path
--- @param pwd string optional start path to use (default is current dir)
--- @return string The absolute path.
function path.abspath(P,pwd) end

--- Given a path, return the root part and the extension part.
--- if there's no extension part, the second value will be empty
--- @param P string A file path
--- @return string, string|nil The root part, the extension part or nil
function path.splitext(P) end

--- Return the directory part of a path.
--- @param P string A file path
--- @return string
function path.dirname(P) end

--- Return the file part of a path.
--- @param P string A file path
--- @return string
function path.basename(P) end

--- Get the extension part of a path.
--- @param P string A file path
--- @return string
function path.extension(P) end

--- Is this an absolute path ?
--- @param P string A file path
--- @return boolean
function path.isabs(P) end

--- Return the path resulting from combining the individual paths.
--- if the second (or later) path is absolute, we return the last absolute path (joined with any non-absolute paths following).
--- empty elements (except the last) will be ignored.
--- @param p1 string A file path
--- @param p2 string A file path
--- @vararg string more file paths
--- @return string The combined path
--- @usage
--- plpath.join("foo", "bar") -- foo/bar
function path.join(p1,p2,...) end

--- Normalize the case of a pathname. On Unix, this returns the path unchanged;
--- for Windows, it converts the path to lowercase, and it also converts forward slashes
--- to backward slashes.
--- @param P string A file path
--- @return string The normalized path
function path.normcase(P) end

--- Normalize a path name.
---  A//B, A/./B and A/foo/../B all become A/B.
--- @param P string A file path
--- @return string The normalized path
function path.normpath(P) end

--- Relative path from current directory or optional start point.
--- @param P string A path
--- @param start string Optional start point (default current directory)
--- @return string The relative path
function path.relpath (P,start) end

--- Replace a starting '~' with the user's home directory.
--- In windows, if HOME isn't set, then USERPROFILE is used in preference to
--- HOMEDRIVE HOMEPATH. This is guaranteed to be writeable on all versions of Windows.
--- @param P string A file path
--- @return string
function path.expanduser(P) end

--- Return a suitable full path to a new temporary file name.
--- unlike os.tmpnam(), it always gives you a writeable path (uses TEMP environment variable on Windows)
--- @return string A temporary file name
function path.tmpname () end

--- Return the largest common prefix path of two paths.
--- @param path1 string a file path
--- @param path2 string a file path
--- @return string
function path.common_prefix (path1,path2) end

--- Return the full path where a particular Lua module would be found.
--- Both package.path and package.cpath is searched, so the result may
--- either be a Lua file or a shared library.
--- @param mod string name of the module
--- @return string|nil, string|nil path of module or nil, error message or nil
function path.package_path(mod) end

return path
