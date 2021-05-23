local M = {}

function M.get_arg(prompt)
  -- get user input if an argument wasn't provided
  local user_input

  if #arg == 0 then
    user_input = M.get_input(prompt)
  else
    user_input = arg[1]
  end

  return user_input
end

function M.get_input(prompt)
  -- get user input
  io.write(prompt)
  local input = io.read()
  return input
end

function M.get_num(prompt)
  -- convert user input to a number
  local num
  repeat num = tonumber(M.get_input(prompt)) until num
  return num
end

function M.split(str, separator)
  -- split a string at its spaces, return a table with separate words
  separator = separator or "%S+"
  local t = {}
  for s in str:gmatch(separator) do table.insert(t, s) end
  return t
end

return M
