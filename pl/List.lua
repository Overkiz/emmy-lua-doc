--- @class pl.List
local List = {}

--- Apply a function to all elements.
--- Any extra arguments will be passed to the function.
--- @param fun function a function of at least one argument
--- @vararg any @arbitrary extra arguments.
--- @return pl.List @a new list: {f(x) for x in self}
function List:map (fun, ...)

end

-- return an iterator over all values.
function List:iter ()
    return iter(self)
end

function List:pop ()

end


return List
