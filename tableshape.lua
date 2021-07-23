---@class tableshape_Type
---@field string self
---@field number self
---@field func self
---@field boolean self
---@field userdata self
---@field table self
---@field nil self
---@field array self
---@field integer self
---@field any self
local Type = {}


----------------
--- Methods: ---
----------------

--- Calling `check_value` is equivalent to calling the type checker object like a function. The `__call` metamethod is
--- provided on all type checker objects to allow you easily test a value by treating them like a function.
--- Tests value against the type checker. Returns true (or the current state object) if the value passes the check.
--- Returns nil and an error message as a string if there is a mismatch. The error message will identify where the mismatch happened as best it can.
--- `check_value` will abort on the first error found, and only that error message is returned.
---@param value any The value to check
---@return true | (nil, string) @ true if OK, or nil+error message
function Type:check_value(value) end

--- Will make a deep copy of the value, checking the type and performing any transformations if necessary.
--- You can use the transform operator (/) to specify how values are transformed.
--- If any tags are used, a tabled of tagged values is returned as the second argument.
---@param value any The value to check
---@return any
function Type:transform(value) end

Type.repair = Type.transform

--- Returns a new type checker that matches the same type, or `nil`.
---@return tableshape_Type
function Type:is_optional() end

--- Returns a wrapped type checker that will use `description` to describe the type when an error message is returned.
--- `description` can either be a string literal, or a function. When using a function, it must return the description of the type as a string.
---@param description string|(fun():string)
---@return tableshape_Type
function Type:describe(description) end

--- Causes the type checker to save matched values into the state object.
--- If name_or_fn is a string, then the tested value is stored into the state with key name_or_fn.
--- If name_or_fn is a function, then you provide a callback to control how the state is updated.
--- The function takes as arguments the state object and the value that matched
--- You can mutate the state argument with any changes. The return value of this function is ignored.
--- Note that state objects are generally immutable. Whenever a state modifying operation takes place, the modification is done to a copy of the state object.
--- This is to prevent changes to the state object from being kept around when a failing type is tested.
--- A function tag gets a copy of the current state as its first argument ready for editing. The copy is a shallow copy.
--- If you have any nested objects then it's necessary to clone them before making any modifications.
---@param name_or_fn string|(fun(state:table, value:any))
function Type:tag(name_or_fn) end

--- Pushes a new state object on top of the stack. After the scoped type matches, the state it created is assigned to the previous scope with the key name.
--- It is equivalent to using the types.scope constructor like so (The following two lines are equivalent):
--- type:scope(name)                  --> scoped type
--- types.scope(type, { tag = name }) --> scoped type
---@param name string
---@return tableshape_Type
function Type:scope(name) end

--- An alias for the transform pattern: `type + types.any / func * type`.
--- In English, this will let a value that matches type pass through, otherwise for anything else call func(value)
--- and let the return value pass through if it matches type, otherwise fail.
---@param func fun(value:any)
---@return tableshape_Type
function Type:on_repair(func) end


---------------------
--- Constructors: ---
---------------------

---@param shape_desc any The shape description
---@param options table<string,any>|nil
---@return tableshape_Type
function Type.shape(shape_desc, options) end

Type.partial = Type.shape

---@param type tableshape_Type
---@param options table<string,any>|nil
---@return tableshape_Type
function Type.scope(type, options) end

---@param tbl (tableshape_Type|string|number|boolean)[]
---@return tableshape_Type
function Type.one_of(tbl) end

---@param lua_pattern string
---@return tableshape_Type
function Type.pattern(lua_pattern) end

---@param item_type tableshape_Type
---@param options table<string,any>|nil
---@return tableshape_Type
function Type.array_of(item_type, options) end

---@param item_type tableshape_Type
---@param options table<string,any>|nil
---@return tableshape_Type
function Type.array_contains(item_type, options) end

---@param key_type tableshape_Type
---@param value_type tableshape_Type
---@return tableshape_Type
function Type.map_of(key_type, value_type) end

---@param value number|string|boolean
---@return tableshape_Type
function Type.literal(value) end

---@param fn fun(val:any, type:tableshape_Type):(true|nil,nil|string)
---@return tableshape_Type
function Type.custom(fn) end

---@param val any
---@return tableshape_Type
function Type.equivalent(val) end

---@overload fun(left:string, right:string):tableshape_Type
---@param left number
---@param right number
---@return tableshape_Type
function Type.range(left, right) end

---@param fn fun():tableshape_Type
---@return tableshape_Type
function Type.proxy(fn) end

return {
  types = Type
}
