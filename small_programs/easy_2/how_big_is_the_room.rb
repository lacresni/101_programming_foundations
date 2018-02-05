# - Ask user input for the length of the room in meters
# - Transform string to float
# - Ask user input for the width of the room in meters
# - Transform string to float
# - Compute area of the room in square meters (length * width)
# - Compute area of the room in square feet (length * width * 10.7639)
# - Display results
SQMETERS_TO_SQFEET = 10.7639

def get_square_meters(length, width)
  length * width
end

def get_square_feet(length, width)
  get_square_meters(length, width) * SQMETERS_TO_SQFEET
end

puts 'Enter the length of the room in meters:'
usr_length = gets.chomp.to_f

puts 'Enter the width of the room in meters:'
usr_width = gets.chomp.to_f

area_square_meters = get_square_meters(usr_length, usr_width)
area_square_feets = get_square_feet(usr_length, usr_width)

puts "The area of the room is #{format('%.2f', area_square_meters)} square \
meters (#{format('%.2f', area_square_feets)} square feet)."
