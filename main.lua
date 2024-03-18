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

--[[ If statements
    
false are false and nill, other are true 
== equal
~= means NOT EQUAL in Lua (not like in JS !=)]]

-- if more, less, more/equal, less/equal
local age = 19

if age > 17 and age <= 60 then
  print("You may enter") -- true
end 

if age > 20 or age <= 10 then
  print("You may enter") -- false
end

if not (age < 15) then 
  print("Not false equals true") -- true
end

-- if equal
local name = "Tom"

if name == "Tom" then 
  print("Hi Tom")
end

-- if elseif else

local yourAge = 9

if yourAge > 30 then
  print("30+")
elseif yourAge > 17 then 
  print("of legal age")
else 
   print("kid") -- kid
end

if type(yourAge) == "number" then 
 print("The value is a number") -- The value is a number
end
--[[in the example above there will be executed 2 values - "kid" and "The value is a number".
    the if statement could be inside another if statement]]

-- ternary operator

local newAge = 33

local old = newAge > 30 and true or false 
  print old -- true

-- Loops
-- for loop

for i = 1, 10, 2 do -- print i from 1 to 10 adding 2 each time
  print(i) -- 1 3 5 7 9
end

for i = 10, 1, -1 do -- print i from 10 to 1 decreasing 1 each time
  print(i) -- 10 9 8 7 6 5 4 3 2 1
end

local array = {54, 5, 52.25, 8, 0}
for i = 1, #array do -- # is the length of the array
  print(array[i]) -- 54, 5, 52.25, 8, 0
end

local people = 10
while people > 0 do
people = people - 1
  print("People left at party: " .. people) -- will be executed only if people > 0. If not, will be not printed at all
end

repeat
  print("Hi there") -- will be executed only if people > 0. If not, will be printed at least once
people = people - 1
until people < 0

local run = true
local runtime = 0
while run do 
  print("Running")
if runtime == 10 then
  run ==false
end
runtime = runtime + 1
end

-- User Input

print("What is 10 + 5?")
local answer = io.read() -- reads input from the user through the standard input
print ("\nYour answer is " .. answer) -- Will write the answers in the next lines

io.write("Input 10 + 5: ") -- Will write the answers in the same line
local answer = io.read()
print ("\nYour answer is " .. answer) 

-- Basic input game

local num1, num2 = 10, 5
local true_answer = num1 + num2
io.write("Input " .. num1 .. " + " .. num2 .. ": ")
local ans = io.read()

if tomunber(ans) == true_answer then
print("You are correct!")
else
print("\nYour answer is:" .. ans .. " and this is wrong. Try again!"
end
