local get_arg = require'utils'.get_arg
local split = require'utils'.split

local function count_vowels(word)
  -- count the vowels in a given word
  local vowels = {a = 0, e = 0, i = 0, o = 0, u = 0, total = 0}
  word = split(word, ".")

  for _, v in pairs(word) do
    for vowel, _ in pairs(vowels) do
      if v == vowel then
        vowels[vowel] = vowels[vowel] + 1
        vowels["total"] = vowels["total"] + 1
      end
    end
  end
  return vowels
end

local function sorted_keys(query, sort_function)
  local keys = {}
  local len = 0
  for k, _ in pairs(query) do
    len = len + 1
    keys[len] = k
  end
  table.sort(keys, sort_function)
  return keys
end

-- TODO find a way to maintain the order of the list before printing
local function show_vowels(vt)
  -- display the count of each vowel in a table
  print("Vowel Count:")
  -- for _, v in ipairs(vs) do print(vt[v]) end
  for k, v in pairs(vt) do
    if k ~= "total" then io.write(string.format("%s: %d\t", k, v)) end
  end
  table.sort(vt)
  print()
end

local function main()
  -- main
  local word = get_arg("Enter a word to count the vowels of: ")
  local vowels = count_vowels(word)

  -- we'll use this to preserve the order of the vowels for better printing
  -- local vowel_places = {}
  -- vowel_places["a"] = 1
  -- vowel_places["e"] = 2
  -- vowel_places["i"] = 3
  -- vowel_places["o"] = 4
  -- vowel_places["u"] = 5
  -- vowel_places["total"] = 6

  show_vowels(vowels)
  print(string.format("'%s' contains %d vowels.", word, vowels["total"]))
end

main()
