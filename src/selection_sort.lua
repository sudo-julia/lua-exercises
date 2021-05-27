local function find_smallest(arr)
  -- find the smallest item in an array
  local smallest = arr[0]
  local smallest_index = 0

  for i = 1, #arr do
    if arr[i] < smallest then
      smallest = arr[i]
      smallest_index = i
    end
  end
  return smallest_index
end
