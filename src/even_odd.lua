local get_num = require("utils").get_num

local function even_odd(num)
  local val = "even"
  if num % 2 ~= 0 then val = "odd" end
  return val
end

local function main()
  local number = get_num("Enter a number: ")

  local val = even_odd(number)

  io.write(number .. " is an " .. val .. " number.\n")
end

main()
