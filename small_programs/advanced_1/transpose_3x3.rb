def transpose(matrix)
  # create an array with n []
  transposed = Array.new(matrix.size) { Array.new }

  matrix.each do |line|
    # fill each column of the new array with the original line content
    line.each_with_index { |j, index| transposed[index] << j }
  end

  transposed
end

def transpose!(matrix)
  (0...matrix.size).each do |i| # row
    (0...matrix.size).each do |j| # column
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j] if j > i
    end
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

transpose!(matrix)
p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
