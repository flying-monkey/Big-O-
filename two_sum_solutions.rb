
def two_sum_bad(array,target)
  length = array.length
  i = 0
  while i < length
    i2 = i + 1
    while i2 < length
      if array[i] + array[i2] == target
        return true
      end
      i2 += 1
    end
    i += 1
  end
  false
end
# arr = [0, 1, 5, 7]
# p two_sum_bad(arr, 6)
# p two_sum_bad(arr, 10)


def two_sum_sort(array, target)
  array = array.sort
  array.each_with_index do |val, idx|
    a = array.bsearch_index do |el|
      el == target - val
    end
    if a != idx && a
      return true
    end
  end
  false
end


# arr = [0, 1, 5, 7]
# p two_sum_sort(arr, 6)
# p two_sum_sort(arr, 10)


def two_sum_hash(array, target)
  hsh = Hash.new(0)

  array.each do |el|
    hsh[el] += 1
    return true if el == target / 2 && hsh[el] >= 2
    return true if hsh[target - el] >= 1 && el != target / 2
  end
  false
end

arr = [0, 1, 5, 7]
p two_sum_hash(arr, 6)
p two_sum_hash(arr, 10)
p two_sum_hash(arr, 8)
p two_sum_hash(arr, 0)
p two_sum_hash(arr, 1)
p two_sum_hash(arr, 12)
p two_sum_hash(arr, 13)
