local dir = {}

--- Test whether a file name matches a shell pattern.
--- Both parameters are case-normalized if operating system is case-insensitive.
--- The only special characters are
--- `'*'` and `'?'`: `'*'` matches any sequence of characters and
--- `'?'` matches any single character.
--- Raise dir and mask must be strings
--- @param filename string A file name.
--- @param pattern string A shell pattern.
--- @return boolean
function dir.fnmatch(filename, pattern) end

--- Return a list of all file names within an array which match a pattern.
--- Raise dir and mask must be strings
--- @param filenames table|pl_List An array containing file names.
--- @param pattern string A shell pattern.
--- @return pl_List List of matching file names.
function dir.filter(filenames, pattern) end

--- Return a list of all files in a directory which match the a shell pattern.
--- Raise dir and mask must be strings
--- @param dir string A directory. If not given, all files in current directory are returned.
--- @param mask string A shell pattern. If not given, all files are returned.
--- @return pl_List list of files
function dir.getfiles(dir, mask) end

--- Return a list of all subdirectories of the directory.
--- Raise dir and mask must be strings
--- @param dir string A directory
--- @return pl_List A list of directories
function dir.getdirectories(dir) end

--- Copy a file.
--- Raise dir and mask must be strings
--- @param src string source file
--- @param dest string destination file or directory
--- @param flag boolean true if you want to force the copy (default)
--- @return boolean operation succeeded
function dir.copyfile (src, dest, flag) end

--- Move a file.
--- Raise dir and mask must be strings
--- @param src string source file
--- @param dest string destination file or directory
--- @return boolean operation succeeded
function dir.movefile (src, dest) end

--- Return an iterator which walks through a directory tree starting at root.
--- Raise dir and mask must be strings
---
--- The iterator returns (root,dirs,files)
---
--- Note that dirs and files are lists of names (i.e. you must say path.join(root,d)
--- to get the actual full path)
---
--- If bottom_up is false (or not present), then the entries at the current level are returned
--- before we go deeper. This means that you can modify the returned list of directories before
--- continuing.
---
--- This is a clone of os.walk from the Python libraries.
--- @param root string A starting directory
--- @param bottom_up boolean False if we start listing entries immediately.
--- @param follow_links boolean follow symbolic links
--- @return string, pl_List, pl_List iterator returning root, dirs, files
function dir.walk(root, bottom_up, follow_links) end

--- Remove a whole directory tree.
---
--- Raise dir and mask must be strings
--- @param fullpath string A directory path
--- @return boolean, string|nil true or nil, error if failed
function dir.rmtree(fullpath) end

--- Create a directory path.
--- Raise dir and mask must be strings
--- This will create subdirectories as necessary!
--- @param p string A directory path
--- @return boolean true on success, nil + errormsg on failure
function dir.makepath (p) end

--- Clone a directory tree. Will always try to create a new directory structure if necessary.
--- Raise path1 and path2 must be strings
--- @param path1 string The base path of the source tree
--- @param path2 string The new base path for the destination
--- @param file_fun fun(file: string) An optional function to apply on all files
--- @param verbose boolean An optional boolean to control the verbosity of the output. It can also be a logging function that behaves like print()
--- @return boolean, string|pl_List, pl_List status, message or list of failed directory creations, list of failed file operations
--- usage:
--- clonetree('.','../backup',copyfile)
function dir.clonetree (path1, path2, file_fun, verbose) end

--- Return an iterator over all entries in a directory tree
--- d must be a non-empty string
--- @param d string a directory
--- @return table An iterator giving pathname and mode (true for dir, false otherwise)
function dir.dirtree( d ) end

--- Recursively returns all the file starting at _path_. It can optionally take a shell pattern and
--- only returns files that match _shell_pattern_. If a pattern is given it will do a case insensitive search.
--- Raise start_path must be a directory
--- @param start_path string A directory. If not given, all files in current directory are returned.
--- @param shell_pattern string A shell pattern. If not given, all files are returned.
--- @return pl_List List containing all the files found recursively starting at _path_ and filtered by _shell_pattern_.
function dir.getallfiles( start_path, shell_pattern ) end

return dir
