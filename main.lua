print("Hello")

A = 5 -- sets the variable in the global environment directly without explicitly using the _G table
_G.Hello = "Hello global" -- is accessible globally from any part of a Lua code
local a = false -- locale variable

-- Types

local b -- nill
local c = 1 -- number
local d = "hello" -- string
local e = true -- boolean
-- table (will be added later)

print (A, _G.Hello, a, b, c, d, e)
print(type(A), type(_G.Hello), type(a), type(b), type(c), type(d), type(e))



