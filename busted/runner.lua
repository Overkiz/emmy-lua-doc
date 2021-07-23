local runner = {}

--- Begin a new test category.
--- @param desc string
--- @param handler function
function describe(desc, handler) end

--- Register a handler to be called before each test case.
--- @param handler function
function before_each(handler) end

--- Register a handler to be called after each test case.
--- @param handler function
function after_each(handler) end

--- A synchronous test case.
--- @param desc string
--- @param handler function
function it(desc, handler) end

-- -----------------------------------------------------------------------------
spy = {}

--- @generic T
--- @param func T
--- @return T
function spy.new(func) end


return runner
