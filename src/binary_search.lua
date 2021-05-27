local function main(list, item)
  local low = 0
  local high = #list

  while low <= high do
    local mid = (low + high) // 2
    local guess = list[mid]
    if guess == item then return mid end
    if guess > item then
      high = mid - 1
    else
      low = mid + 1
    end
    return nil
  end
end

print(main({1, 3, 5, 7, 9}, 3))
