local function get_input()
    io.write("Provide some input: ")
    local input = io.read()
    return input
end

local function get_str_length(mystring)
    -- split a string at its spaces, insert words into a table and return the length
    local t = {}
    for str in mystring:gmatch("%S+") do table.insert(t, str) end
    return #t
end

local user_input
if #arg == 0 then
    user_input = get_input()
else
    user_input = arg[1]
end

local input_len = get_str_length(user_input)

io.write('Your string "' .. user_input .. '" contains ' .. input_len ..
             ' words.\n')
