# - Initialize total_sum variable with 0
# - Loop until array is empty
#   - Compute sum of all numbers in the array
#   - Add that sum to total_sum
#   - Remove last element in the array
# - Return total_sum
def sum_of_sums(arr)
  total_sum = 0
  dup_arr = arr.dup # make a copy to avoid mutating original array
  until dup_arr.empty?
    total_sum += dup_arr.reduce(:+)
    dup_arr.pop
  end
  total_sum
end

p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
