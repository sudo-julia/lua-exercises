local get_num = require'utils'.get_num

local function add_step(steps) return steps + 1 end

local function collatz(n)
  -- run collatz conjecture
  local steps = 0
  print("\nSteps:")
  while n ~= 1 do
    if n % 2 == 0 then
      n = n / 2
    else
      n = (n * 3) + 1
    end
    steps = add_step(steps)
    io.write(string.format("%d ", n))
  end
  print("\n")
  return steps
end

local function main()
  -- local number = get_num("Enter a number to run the Collatz Conjecture on: ")
  local number = 271114753

  -- while number <= 1 do
  --   print("Please choose a number larger than 1.")
  --   number = get_num("Enter a number to run the Collatz Conjecture on: ")
  -- end
  local steps = collatz(number)
  print(string.format("It took %d steps to reach 1 from %d", steps, number))
end

main()
