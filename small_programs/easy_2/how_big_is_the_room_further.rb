FOOT_TO_INCH = 12
FOOT_TO_CENTIMETER = 30.48

def get_square_feet(length, width)
  length * width
end

def get_square_inches(length, width)
  get_square_feet(length, width) * FOOT_TO_INCH**2
end

def get_square_centimeters(length, width)
  get_square_feet(length, width) * FOOT_TO_CENTIMETER**2
end

puts 'Enter the length of the room in feet:'
usr_length = gets.chomp.to_f

puts 'Enter the width of the room in feet:'
usr_width = gets.chomp.to_f

area_square_feets = get_square_feet(usr_length, usr_width).round(2)
area_square_inches = get_square_inches(usr_length, usr_width).round(2)
area_square_centimeters = get_square_centimeters(usr_length, usr_width).round(2)

puts 'The area of the room is :'
puts "- #{area_square_feets} square feets"
puts "- #{area_square_inches} square inches"
puts "- #{area_square_centimeters} square centimeters"
