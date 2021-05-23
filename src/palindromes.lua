local get_input = require'utils'.get_input

local function get_words()
  -- get five input words and add them to a table
  local input_words = {}
  for i = 1, 5 do
    local prompt = "Enter word " .. i .. ": "
    table.insert(input_words, get_input(prompt))
  end
  return input_words
end

local function is_palindrome(word)
  -- check if a word is the same reversed
  local reverse = word:reverse()
  if word == reverse then return true end
  return false
end

local function main()
  local words = get_words()
  for _, word in pairs(words) do
    if is_palindrome(word) then
      print('"' .. word .. '" is a palindrome!')
    else
      print('"' .. word .. '" is not a palindrome.')
    end
  end
end

main()
