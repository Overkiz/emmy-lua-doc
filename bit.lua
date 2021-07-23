-- LuaJIT bit module documentation/annotations for the EmmyLua plugin.
-- See https://github.com/EmmyLua/IntelliJ-EmmyLua
--
-- Licensed under the Apache License, Version 2.0 (the "License"); you may not
-- use this file except in compliance with the License. You may obtain a copy of
-- the License at
--
-- http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
-- WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
-- License for the specific language governing permissions and limitations under
-- the License.

local bit = {}

--- Normalizes a number to the numeric range for bit operations and returns it.
--- This function is usually not needed since all bit operations already normalize all of their input arguments.
---@param x number
---@return number
function bit.tobit(x) end

--- Converts its first argument to a hex string.
--- The number of hex digits is given by the absolute value of the optional second argument.
--- Positive numbers between 1 and 8 generate lowercase hex digits.
--- Negative numbers generate uppercase hex digits. Only the least-significant 4*|n| bits are used.
--- The default is to generate 8 lowercase hex digits.
---@overload fun(x:number):string
---@param x number
---@param n number
---@return string
function bit.tohex(x, n) end

--- Returns the bitwise not of its argument.
---@param x number
---@return number
function bit.bnot(x) end

--- Returns the bitwise and of all of its arguments. Note that more than two arguments are allowed.
---@param x number
---@param x1 number
---@vararg number
---@return number
function bit.band(x, x1, ...) end

--- Returns the bitwise or of all of its arguments. Note that more than two arguments are allowed.
---@param x number
---@param x1 number
---@vararg number
---@return number
function bit.bor(x, x1, ...) end

--- Returns the bitwise xor of all of its arguments. Note that more than two arguments are allowed.
---@param x number
---@param x1 number
---@vararg number
---@return number
function bit.bxor(x, x1, ...) end

--- Returns the bitwise logical left-shift of its first argument by the number of bits given by the second argument.
--- Logical shifts treat the first argument as an unsigned number and shift in 0-bits.
--- Only the lower 5 bits of the shift count are used (reduces to the range [0..31]).
---@param x number
---@param n number
---@return number
function bit.lshift(x, n) end

--- Returns the bitwise logical right-shift of its first argument by the number of bits given by the second argument.
--- Logical shifts treat the first argument as an unsigned number and shift in 0-bits.
--- Only the lower 5 bits of the shift count are used (reduces to the range [0..31]).
---@param x number
---@param n number
---@return number
function bit.rshift(x, n) end

--- Returns the arithmetic right-shift of its first argument by the number of bits given by the second argument.
--- Arithmetic right-shift treats the most-significant bit as a sign bit and replicates it.
--- Only the lower 5 bits of the shift count are used (reduces to the range [0..31]).
---@param x number
---@param n number
---@return number
function bit.arshift(x, n) end

--- Normalizes a number to the numeric range for bit operations and returns it.
--- This function is usually not needed since all bit operations already normalize all of their input arguments.
---@param x number
---@param n number
---@return number
function bit.rol(x, n) end

--- Returns either the bitwise right rotation of its first argument by the number of bits given by the second argument.
--- Bits shifted out on one side are shifted back in on the other side.
--- Only the lower 5 bits of the rotate count are used (reduces to the range [0..31]).
---@param x number
---@param n number
---@return number
function bit.ror(x, n) end

--- Swaps the bytes of its argument and returns it.
--- This can be used to convert little-endian 32 bit numbers to big-endian 32 bit numbers or vice versa.
---@param x number
---@return number
function bit.bswap(x) end

return bit
