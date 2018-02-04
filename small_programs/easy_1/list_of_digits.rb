def digit_list(number)
  return [] if number < 0

  number.to_s.chars.map(&:to_i)
end

puts digit_list(12_345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375_290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
puts digit_list(0) == [0]
puts digit_list(-444) == []
