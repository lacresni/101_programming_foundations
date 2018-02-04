def stringy(number)
  string = ''

  number.times do |x|
    string << (x.even? ? '1' : '0')
  end

  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(0) == ''

puts
puts 'Further Exploration'
puts

def stringy_further(number, order = 1)
  string = ''

  number.times do |x|
    string << if order == 1
                (x.even? ? '1' : '0')
              else
                (x.odd? ? '1' : '0')
              end
  end

  string
end

puts stringy_further(6, 0) == '010101'
puts stringy_further(9, 0) == '010101010'
puts stringy_further(4, 0) == '0101'
puts stringy_further(7, 0) == '0101010'
puts stringy_further(0, 0) == ''
