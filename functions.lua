-- Basic functions

local function displayAge(age) 
  age = age or 5
  print("You are " .. age .. "years old now")
  print("You will be " .. age + 2 .. "years old in 2 years")
  print("You were " .. age - 1 .. "years last year")
end

displayAge() -- You are 5 years old now You will be 7 years old in 2 years You were 4 years last year
displayAge(10) -- You are 10 years old now You will be 12 years old in 2 years You were 9 years last year

local function sum(num1, num2)
  local y = num1 + num2
  return y
end
local x = sum(2, 3)
print(x)

local add10 = function(number)
  return 10 + number
end
print(add10(5)) -- 15

local add20 = function(number)
  local outcome  = 20 + number
  return number, outcome
end
local stored, output = add20(10) -- stored is the same as number, output is the same as outcome
print(stored .. " had 20 added to it: " .. output) -- 10 had 20 added to it:30
--[[ local _, output = add20(10) -- if we are not to use a variable, we use _
print("Had 20 added to it: " .. output) ]]

-- Recursion

local function counter(number, end_num)
  local count = number + 1
  if(count < end_num) then
    print(count)
   return counter(count, end_num) 
  end
  return count
end

-- Anonymous function
