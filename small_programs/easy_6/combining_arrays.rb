def merge(arr1, arr2)
  arr = arr1 + arr2
  arr.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge([], []) == []

def merge_solution2(arr1, arr2)
  arr = arr1.clone
  arr2.each do |element|
    arr << element unless arr.include?(element)
  end
  arr
end

list1 = [1, 3, 5]
list2 = [3, 6, 9]
p merge_solution2(list1, list2) == [1, 3, 5, 6, 9]
p list1 == [1, 3, 5]
p list2 == [3, 6, 9]
