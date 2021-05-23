local get_num = require'utils'.get_num

local function main()
  local number = math.random(50)
  local guess, guesses = nil, 0

  repeat
    guess = get_num("Enter a number between 1 and 50: ")
    if guess > number then
      print("Too high!")
    elseif guess < number then
      print("Too low!")
    end
    guesses = guesses + 1
  until guess == number

  print("Correct! The CPU also chose " .. number)
  print("It took you " .. guesses .. " tries to get the correct number.")
end

main()
