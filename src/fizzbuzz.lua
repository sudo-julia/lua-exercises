local function main()
  -- fizzbuzz
  local numbers = {}
  for i = 1, 100 do table.insert(numbers, i) end

  for _, n in ipairs(numbers) do
    if n % 3 == 0 and n % 5 == 0 then
      print("Fizzbuzz")
    elseif n % 3 == 0 then
      print("Fizz")
    elseif n % 5 == 0 then
      print("Buzz")
    else
      print(n)
    end
  end
end

main()
