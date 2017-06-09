def windowed_max_range(array, range)
  current_max_range = 0
  i=0
  while (i + range) <= array.length
    cur_array = array[i...(i + range)]
    comparison_value = cur_array.max - cur_array.min
    current_max_range = comparison_value if comparison_value > current_max_range
    i += 1
  end
  current_max_range
end
p windowed_max_range([1, 0, 2, 5, 4, 8], 2)# == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3)# == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4)# == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5)# == 6 # 3, 2, 5, 4, 8
