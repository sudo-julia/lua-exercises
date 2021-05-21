local function get_num()
    io.write("Enter a number: ")
    local num = io.read()
    num = tonumber(num)
    if num ~= nil then return num end
    repeat
        io.write("Please enter a valid number: ")
        num = io.read()
        num = tonumber(num)
    until (num ~= nil)
    return num
end

local function even_odd(num)
    local val = "even"
    if num % 2 ~= 0 then val = "odd" end
    return val
end

local function main()
    local number = get_num()

    local val = even_odd(number)

    io.write(number .. " is an " .. val .. " number.\n")
end

main()
