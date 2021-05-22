local M = {}

function M.get_input(prompt)
  io.write(prompt)
  local input = io.read()
  return input
end

function M.get_arg(prompt)
  local user_input

  if #arg == 0 then
    user_input = M.get_input(prompt)
  else
    user_input = arg[1]
  end

  return user_input
end

function M.string_to_table(in_string)
  -- split a string at its spaces, return a table with separate words
  local t = {}
  for str in in_string:gmatch("%S+") do table.insert(t, str) end
  return t
end

return M
