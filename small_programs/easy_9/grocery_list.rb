# - Create an empty array result[]
# - Iterate through array
#   - For each sub array
#     - Add first element n times to result[]
def buy_fruit(grocery_list)
  grocery_list.each_with_object([]) do |sub_arr, arr|
    sub_arr[1].times { arr << sub_arr[0] }
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas", "bananas"]
p buy_fruit([["apples", 0], ["orange", 0], ["bananas", 0]]) == []
p buy_fruit([]) == []
