print("Hello")

A = 5 -- sets the variable in the global environment directly without explicitly using the _G table
_G.Hello = "Hello global" -- is accessible globally from any part of a Lua code
local a = false -- locale variable

-- Types

local b -- nill
local c = 1 -- number
local d = "66" -- string
local e = true -- boolean
-- table (will be added later)

print (A, _G.Hello, a, b, c, d, e)
print(type(A), type(_G.Hello), type(a), type(b), type(c), type(d), type(e))
print(type(tonumber(d))) -- the data type was changed from string to number

print(math.random(7)) -- generates a random integer between 1 and 7 (inclusive)
print(math.random(6, 56)) -- generates a random integer between 6 and 56 (inclusive)

print(math.max(2, 45, 3, 14, 7)) -- max value 45
print(math.min(2, 45, 3, 14, 7)) -- min value 2

print(math.floor(6.64673)) -- 6
print(math.ceil(6.64673)) -- 7


math.randomseed(3) -- set the seed to a specific value, the sequence of random numbers generated afterward will be the same every time you run the program with the same seed
print(math.random()) -- random from 0 to 1

print(os.time()) --  returns the current time in seconds since the Unix epoch

local str = "This is a string"
print(str) -- This is a string
print(#str) -- 11 - # is the length of the string
print(string.len(str)) -- 11 - length too

local stringLength = #"Length"
print(stringLength) -- 6

local string = "Hello " .. "World!" -- .. is concal
print(string) -- Hello World!

local num = 22
local converted = tostring(num)
print(type(num), type(converted)) -- number, string

local fewLines = [[
This is the first line
  and second one
            more lines...
]]
print(fewLines)

print("Hello\nWorld\t!!!!!!!\vMy name is...\\Meow") -- n-new line, t-tab, v-vertical tab. if "\" is needed, use double \\

locat lowCase = "Hello World"
print(string.lower(lowCase)) -- hello world
print(string.upper(lowCase)) -- HELLO WORLD
print(string.sub(lowCase, 1, 8)) -- Hello Wo - select characters from 1 to 8

print(string.char(97)) -- a
print(string.byte("A")) -- 65

print(string.rep("Hello!", 3, ",")) -- Hello!,Hello!,Hello!

print(string.find(lowCase, "orl")) -- 8 10 - index of the first and the last
print(string.match(lowCase, "orl")) -- orl

local begin, ending = string.find(lowCase, "orl"))
print("Begin: " .. begin .. "\nEnd: " .. ending) -- find the position

print(string.gsub(lowCase, "o", "!")) -- Hell! W!rld  2 - replace o with ! and show how many is replaced




