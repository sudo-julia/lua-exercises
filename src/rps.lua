local get_input = require("utils").get_input

local function cpu_choice()
  -- randomly choose between playable options
  local t = {"rock", "paper", "scissors"}
  return t[math.random(#t)]
end

local function decide_outcome(cpu, player)
  -- decide the outcome of the choices
  -- TODO there has to be a cleaner way to do this
  local outcome
  if cpu == player then
    outcome = "cat's game"
  elseif (cpu == "rock" and player == "scissors") or
      (cpu == "scissors" and player == "paper") or
      (cpu == "paper" and player == "rock") then
    outcome = "cpu win"
  else
    outcome = "player win"
  end
  return outcome
end

local function parse_player_choice(choice)
  -- parse the player choice
  local t = {r = "rock", p = "paper", s = "scissors"}
  if table.invalues(t, choice) then
    return choice
  elseif table.inkeys(t, choice) then
    return t[choice]
  else
    print(choice .. " is not a valid choice. Try again.")
    os.exit(1)
  end
end

function table.inkeys(table, element)
  for k, _ in pairs(table) do if k == element then return true end end
  return false
end

function table.invalues(table, element)
  for _, v in pairs(table) do if v == element then return true end end
  return false
end

local function main()
  local player_move = get_input("[r]ock, [p]aper, [s]cissors: "):lower()
  player_move = parse_player_choice(player_move)
  local cpu_move = cpu_choice()
  print("CPU chose: " .. cpu_move)
  local outcome = decide_outcome(cpu_move, player_move)
  print(outcome)
end

main()
