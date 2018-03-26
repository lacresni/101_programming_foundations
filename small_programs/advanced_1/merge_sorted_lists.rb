def merge(arr1, arr2)
  merged = []

  index_arr1 = 0
  index_arr2 = 0

  loop do
    if index_arr1 < arr1.size &&
       (index_arr2 >= arr2.size || arr1[index_arr1] < arr2[index_arr2])
      merged << arr1[index_arr1]
      index_arr1 += 1
    else
      merged << arr2[index_arr2]
      index_arr2 += 1
    end

    break if index_arr1 >= arr1.size && index_arr2 >= arr2.size
  end
  merged
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
