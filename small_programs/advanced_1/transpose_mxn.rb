def transpose(matrix)
  # nb_rows = matrix.size
  nb_columns = matrix[0].size

  # create an array with nb_columns []
  transposed = Array.new(nb_columns) { Array.new }

  matrix.each do |line|
    # fill each column of the new array with the original line content
    line.each_with_index { |j, index| transposed[index] << j }
  end

  transposed
end

# def transpose!(matrix)
#   (0...matrix.size).each do |i| # row
#     (0...matrix.size).each do |j| # column
#       matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j] if j > i
#     end
#   end
# end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
