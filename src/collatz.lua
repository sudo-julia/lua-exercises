local get_num = require'utils'.get_num

local function add_step(steps) return steps + 1 end

local function collatz(n, steps)
  -- run collatz conjecture
  print("\nSteps:")
  while n ~= 1 do
    if n % 2 == 0 then
      n = n / 2
      steps = add_step(steps)
    else
      n = (n * 3) + 1
      steps = add_step(steps)
    end
    io.write(string.format("%d ", n))
  end
  print("\n")
  return steps
end

local function main()
  local steps = 0
  local number = get_num("Enter a number to run the Collatz Conjecture on: ")

  while number <= 1 do
    print("Please choose a number larger than 1.")
    number = get_num("Enter a number to run the Collatz Conjecture on: ")
  end
  steps = collatz(number, steps)
  print(string.format("It took %d steps to reach 1 from %d", steps, number))
end

main()
