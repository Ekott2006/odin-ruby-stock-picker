def stock_picker(array)
  result = {arr: [0,1], value: array[1] - array[0]}
  for i in 0...array.length - 1
    for j in i+1...array.length
      value = array[j] -array[i]
      if (result[:value] < value)
        result[:arr] = [i, j]
        result[:value] = value
      end
    end
  end
  result[:arr]
end

print stock_picker([17,3,6,9,15,8,6,1,10])
