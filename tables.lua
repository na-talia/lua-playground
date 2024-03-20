-- Tables are used for storing multiple values in a single variable. Indexes started from 1 (not from 0)

local arr = {10, 20, 5, 4, 89} -- tables can not be printed: print(arr) - not possible
print(arr[1]) -- 10
print(arr[4]) -- nil
print(#arr) -- length of the array

-- Sorting
-- table.sort(arr[1]) -- 4 (the smallest value)

for i = 1, #arr do
  print(arr[i]) -- 10, 20, 5, 4, 89
end
table.sort(arr) -- 4, 5, 10, 20, 89

-- Insert a value into array

table.insert(arr, 2, "lol") -- insert "lol" into the array to index 2

-- Remove a value from array
table.remove(arr, 4) -- remove 50 from the array

-- Concat values

local array-string = {"Hello", "my", "name", "is", "human name"}
print(table.concat(arr, " ")) --Hello my name is human name

local big-arr = {
  {"gfts", "fsf", "gfgfgfjh"},
  {78, 54, "d"},
  {555, 7}
}
print(big-arr[1][1]) -- gfts

for i = 1, #big-arr do
  for j = 1, #big-arr[i] do
    print(big-arr[i][j]) -- gfts fsf gfgfgfjh 78 54 d 555 7
  end
end
