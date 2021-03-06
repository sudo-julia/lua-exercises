local get_arg = require("utils").get_arg
local split = require("utils").split

local function get_str_length(mystring)
  -- split a string at its spaces, insert words into a table and return the length
  local t = split(mystring)
  return #t
end

local function main()
  local user_input = get_arg("Give a string: ")

  local input_len = get_str_length(user_input)

  io.write('"' .. user_input .. '" contains ' .. input_len .. ' words.\n')
end

main()
