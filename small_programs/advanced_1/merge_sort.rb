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

def merge_sort(arr)
  return arr if arr.size == 1

  midsize = arr.size / 2
  arr2_size = arr.size.even? ? midsize : midsize + 1

  arr1 = merge_sort(arr[0, midsize])
  arr2 = merge_sort(arr[midsize, arr2_size])

  merge(arr1, arr2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) ==
  %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) ==
  [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
