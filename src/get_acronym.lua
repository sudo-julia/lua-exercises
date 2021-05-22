local get_arg = require("utils").get_arg
local string_to_table = require("utils").string_to_table

local function make_acronym(phrase)
  local t = {}
  t = string_to_table(phrase)
  local acronym = ""
  for _, v in pairs(t) do acronym = acronym .. string.upper(v:sub(1, 1)) end
  return acronym
end

local function main()
  local user_input = get_arg("Give a sting to make an acronym: ")
  local acronym = make_acronym(user_input)
  io.write(user_input .. " -> " .. acronym .. "\n")
end

main()
