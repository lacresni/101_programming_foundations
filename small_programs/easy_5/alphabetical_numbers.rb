# - Convert array of integers to corresponding array of strings with
# array conversion table
#   - Iterate through input array
#     - For each element, convert value to string considering value as an index
# - Sort array of strings
# - Create an empty array
# - Iterate through sorted array
#   - For each string, find index in conversion table and add it to result array
CONVERT_TABLE = %w(zero one two three four five six seven eight nine
                   ten eleven twelve thirteen fourteen fifteen sixteen
                   seventeen eighteen nineteen)

def alphabetic_number_sort(arr)
  arr_string = arr.map { |int| CONVERT_TABLE[int] }.sort
  result = []
  arr_string.each do |nb_str|
    result << CONVERT_TABLE.find_index(nb_str)
  end
  result
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

p alphabetic_number_sort((0..9).to_a) == [
  8, 5, 4, 9, 1, 7, 6, 3, 2, 0
]
