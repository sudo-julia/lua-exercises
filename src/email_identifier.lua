local get_arg = require'utils'.get_arg
local split = require'utils'.split

function table.index(table, query)
  -- find a query in a table and return its position
  for k, v in pairs(table) do if v == query then return k end end
end

local function get_domain(email)
  -- take an email address as a string and return its domain name
  local t = split(email, ".")
  local del_to = table.index(t, "@")
  -- removing values in this manner leaves the values with incorrect key nums
  for i = 1, del_to do t[i] = nil end
  -- meaning that we have to copy all the values to a new table to concatenate
  local new = {}
  for _, v in pairs(t) do table.insert(new, v) end
  return table.concat(new)
end

local function main()
  -- main
  local e_address = get_arg("Email address: ")
  local domain = get_domain(e_address)
  print("The given email is registered with " .. domain)
end

main()
