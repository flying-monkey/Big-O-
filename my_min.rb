# def my_min(list)
#   answer = nil
#   list.each_index do |i|
#       answer = list[i] < list[i+1] ? list[i] : list[i+1]
#   end
#     answer
# end
def my_min1(list) # N time
  min = list[0]
  list.each do |el|
    min = el if el < min
  end
  min
end


def my_min(list) # n squared time(Quadratic)
  min_val=list[0]
  list.each do |val|
    list.each do |second_val|
      if val < second_val && val < min_val
          min_val = val
      end
    end
  end
  min_val
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def largest_continious_subsum(list)
  possible_arrays = []
  idx1=0
  while idx1 < list.count
    idx2=idx1
    while idx2 < list.count
      sub_array = list[idx1..idx2]
      possible_arrays << sub_array
      idx2 += 1
    end
    idx1 += 1
  end
  greatest_sum = list[0]
  p possible_arrays
  possible_arrays.each do |arr|
    if (arr.inject(:+)) > greatest_sum
      greatest_sum = arr.inject(:+)
    end
  end
  greatest_sum
end
list = [5, 3, -7]
p largest_continious_subsum(list)

def largest_continious_subsum2(list)
  largest = list[0]

  return list.max if list.all? { |x| x < 0 }

  first = list.shift
  list.each do |num|
    first = 0 if first < 0
    first += num
    largest = first if first > largest
  end
  largest
end
