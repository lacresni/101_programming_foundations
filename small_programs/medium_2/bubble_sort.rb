def bubble_sort!(arr)
  size = arr.size

  loop do
    index = 1
    swap = false
    loop do
      if arr[index - 1] > arr[index]
        arr[index - 1], arr[index] = arr[index], arr[index - 1]
        swap = true
      end
      index += 1
      break if index >= size
    end
    size -= 1
    break unless swap
  end
end

p array = [5, 3]
bubble_sort!(array)
p array == [3, 5]
puts

p array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]
puts

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
