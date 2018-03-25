def rotate90(matrix)
  rows = matrix.size
  columns = matrix.first.size

  rotated = []

  # first column (descent order) becomes the first line
  # last column becomes the last line
  (0...columns).each do |col_elt|
    rotated << rows.downto(1).map { |row_elt| matrix[row_elt - 1][col_elt] }
  end

  rotated
end

def rotate(matrix, degrees = 90)
  rotated = matrix
  (degrees / 90).times { rotated = rotate90(rotated) }
  rotated
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

new_matrix1 = rotate(matrix1, 90)
p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]

new_matrix4 = rotate(matrix1, 180)
p new_matrix4 == [[6, 9, 3], [2, 7, 4], [8, 5, 1]]

new_matrix5 = rotate(matrix1, 270)
p new_matrix5 == [[8, 2, 6], [5, 7, 9], [1, 4, 3]]

new_matrix6 = rotate(matrix1, 360)
p new_matrix6 == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

new_matrix6 = rotate(matrix2, 180)
p new_matrix6 == [[8, 0, 1, 5], [2, 4, 7, 3]]
