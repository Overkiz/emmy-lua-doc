local tablex = require 'pl.tablex'

--- @class pl.List
local List = {}

--- Apply a function to all elements.
--- Any extra arguments will be passed to the function.
--- @param fun fun(a:any):any a function of at least one argument
--- @vararg any @arbitrary extra arguments.
--- @return pl.List a new list: {f(x) for x in self}
function List:map(fun, ...) end

--- Make a copy of an existing list.
--- The difference from a plain 'copy constructor' is that this returns
--- the actual List subtype.
function List:clone() end

--- Add an item to the end of the list.
--- @param i any An item
--- @return pl.List the list
function List:append(i) end

--- Extend the list by appending all the items in the given list.
--- equivalent to 'a[len(a):] = L'.
--- @param L pl.List Another List
--- @return pl.List the list
function List:extend(L) end

--- Insert an item at a given position. i is the index of the
--- element before which to insert.
--- @param i number index of element before whichh to insert
--- @param x any A data item
--- @return pl.List the list
function List:insert(i, x) end

--- Insert an item at the begining of the list.
--- @param x any A data item
--- @return pl.List the list
function List:put(x) end

--- Remove an element given its index.
--- (equivalent of Python's del s[i])
--- @param i number the index
--- @return pl.List the list
function List:remove(i) end

--- Remove the first item from the list whose value is given.
--- (This is called 'remove' in Python; renamed to avoid confusion with table.remove)
--- Return nil if there is no such item.
--- @param x any A data value
--- @return pl.List the list
function List:remove_value(x) end

--- Remove the item at the given position in the list, and return it.
--- If no index is specified, a:pop() returns the last item in the list.
--- The item is also removed from the list.
--- @overload fun():any
--- @param i number An index
--- @return any the item
function List:pop(i) end

--- Return the index in the list of the first item whose value is given.
--- Return nil if there is no such item.
List.index = tablex.find

--- Does this list contain the value?
--- @param x any A data value
--- @return boolean
function List:contains(x) end

--- Return the number of times value appears in the list.
--- @param x any A data value
--- @return number of times x appears
function List:count(x) end

--- Sort the items of the list, in place.
--- @overload fun():pl.List
--- @param cmp string|fun(a:any, b:any):number an optional comparison function or operator char
--- @return pl.List the list
function List:sort(cmp) end

--- Return a sorted copy of this list.
--- @overload fun():pl.List
--- @param cmp string|fun(a:any, b:any):number an optional comparison function or operator char
--- @return pl.List a new list
function List:sorted(cmp) end

--- Reverse the elements of the list, in place.
--- @return pl.List the list
function List:reverse() end

--- Return the minimum and the maximum value of the list.
--- @generic T
--- @return T,T @ minimum, maximum
function List:minmax() end

--- Emulate list slicing.  like  'list[first:last]' in Python.
--- If first or last are negative then they are relative to the end of the list
--- eg. slice(-2) gives last 2 entries in a list, and slice(-4,-2) gives from -4th to -2nd
--- @param first number An index
--- @param last number An index
--- @return pl.List a new list
function List:slice(first,last) end

--- Empty the list.
--- @return pl.List the list
function List:clear() end

--- Emulate Python's range(x) function.
--- Include it in List table for tidiness
--- @overload fun(start:number, finish:number):pl.List
--- @param start number A number
--- @param finish number A number greater than start; if absent, then start is 1 and finish is start
--- @param incr number an increment (may be less than 1)
--- @return pl.List a List from start .. finish
function List.range(start,finish,incr) end

--- list:len() is the same as #list.
function List:len() end

--- Extended operations --

--- Remove a subrange of elements.
--- equivalent to 'del s[i1:i2]' in Python.
--- @param i1 number start of range
--- @param i2 number end of range
--- @return pl.List the list
function List:chop(i1,i2) end

--- Insert a sublist into a list
--- equivalent to 's[idx:idx] = list' in Python
--- @param idx number index
--- @param list pl.List to insert
--- @return pl.List the list
function List:splice(idx,list) end

--- General slice assignment s[i1:i2] = seq.
--- @param i1 number  start index
--- @param i2 number  end index
--- @param seq pl.List a list
--- @return pl.List the list
function List:slice_assign(i1,i2,seq) end

--- Concatenation operator.
--- @param L pl.List another List
--- @return pl.List a new list consisting of the list with the elements of the new list appended
function List:__concat(L) end

--- Equality operator ==.  True iff all elements of two lists are equal.
--- @param L pl.List another List
--- @return boolean
function List:__eq(L) end

--- Join the elements of a list using a delimiter.
--- This method uses tostring on all elements.
--- @overload fun():pl.List
--- @param delim string an optional delimiter string, default is empty string.
--- @return string
function List:join(delim) end

List.concat = table.concat

--- How our list should be rendered as a string. Uses join().
--- @see pl.List#join
function List:__tostring() end

--- Call the function on each element of the list.
--- @param fun function a function or callable object
--- @vararg any @optional values to pass to function
function List:foreach(fun,...) end

--- Call the named method on each element of the list.
--- @param name string the method name
--- @vararg any @optional values to pass to function
function List:foreachm(name,...) end

--- Create a list of all elements which match a function.
--- @overload fun(func:fun(a:any, b:any):boolean):pl.List
--- @param func fun(a:any, b:any):boolean a boolean function
--- @param arg any an argument to be passed as second argument of the predicate
--- @return pl.List a new filtered list.
function List:filter(func,arg) end

--- Split a string using a delimiter.
--- @overload fun(s:string):pl.List
--- @param s string the string
--- @param delim string delimiter string/pattern (default: '%s+')
--- @return pl.List a List of strings
--- @see pl.utils.split
function List.split(s,delim) end

--- Apply a function to all elements.
--- Any extra arguments will be passed to the function.
--- @param fun function a function of at least one argument
--- @vararg any @arbitrary extra arguments.
--- @return pl.List a new list: {f(x) for x in self}
--- @see pl.tablex.imap
function List:map(fun,...) end

--- Apply a function to all elements, in-place.
--- Any extra arguments are passed to the function.
--- @param fun function A function that takes at least one argument
--- @vararg any @arbitrary extra arguments.
--- @return pl.List the list.
function List:transform(fun,...) end

--- Apply a function to elements of two lists.
--- Any extra arguments will be passed to the function
--- @param fun function a function of at least two arguments
--- @param ls pl.List another list
--- @vararg any @arbitrary extra arguments.
--- @return pl.List a new list: {f(x,y) for x in self, for x in arg1}
--- @see pl.tablex.imap2
function List:map2(fun,ls,...) end

--- apply a named method to all elements.
--- Any extra arguments will be passed to the method.
--- @param name string name of method
--- @vararg any @extra arguments
--- @return pl.List a new list of the results
--- @see pl.seq.mapmethod
function List:mapm(name,...) end

--- 'reduce' a list using a binary function.
--- @param fun fun(a:any, b:any):any a function of two arguments
--- @return any result of the function
--- @see pl.tablex.reduce
function List:reduce(fun) end

--- Partition a list using a classifier function.
--- The function may return nil, but this will be converted to the string key '<nil>'.
--- @param fun function a function of at least one argument
--- @vararg any @will also be passed to the function
--- @return pl.MultiMap a table where the keys are the returned values, and the values are Lists
--- of values where the function returned that key.
--- @see pl.MultiMap
function List:partition(fun,...) end

--- return an iterator over all values.
--- @return function
function List:iter() end

--- Create an iterator over a seqence.
--- This captures the Python concept of 'sequence'.
--- For tables, iterates over all values with integer indices.
--- @param seq any a sequence; a string (over characters), a table, a file object (over lines) or an iterator function
--- @return function
function List.iterate(seq) end

return List
