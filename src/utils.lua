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

-- TODO add options to split by different delimiters
function M.split(str, separator)
  -- split a string at its spaces, return a table with separate words
  separator = "%S+" or separator
  local t = {}
  for s in str:gmatch(separator) do table.insert(t, s) end
  return t
end

return M
