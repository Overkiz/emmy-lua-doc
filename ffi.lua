local ffi = {}


--- Adds multiple C declarations for types or external symbols (named variables or functions).
--- def must be a Lua string.
--- The contents of the string must be a sequence of C declarations, separated by semicolons.
--- The trailing semicolon for a single declaration may be omitted.
--- Please note that external symbols are only declared, but they are not bound to any specific address, yet.
--- Binding is achieved with C library namespaces (see below).
--- @param def string C source header
function ffi.cdef(def) end

--- This loads the dynamic library given by name and returns a new C library namespace
--- which binds to its symbols. On POSIX systems, if global is true, the library symbols
--- are loaded into the global namespace, too.
--- If name is a path, the library is loaded from this path. Otherwise name is canonicalized
--- in a system-dependent way and searched in the default search path for dynamic libraries:
--- On POSIX systems, if the name contains no dot, the extension .so is appended. Also,
--- the lib prefix is prepended if necessary. So ffi.load("z") looks for "libz.so" in the
--- default shared library search path.
--- On Windows systems, if the name contains no dot, the extension .dll is appended.
--- So ffi.load("ws2_32") looks for "ws2_32.dll" in the default DLL search path.
--- @param name string Dynamic library name
--- @param global boolean
--- @overload fun(name: string)
function ffi.load(name, global) end

local C = {}

--- This is the default C library namespace — note the uppercase 'C'.
--- It binds to the default set of symbols or libraries on the target system.
--- These are more or less the same as a C compiler would offer by default,
--- without specifying extra link libraries.
ffi.C = C

return ffi
