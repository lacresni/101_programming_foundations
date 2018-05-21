# String#upcase! is a destructive method,
# so why does this code print HEY you instead of HEY YOU?

def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you')

=begin
def shout_out_to(name)
  puts "name object_id = #{name.object_id}"
  puts "name[0] object_id = #{name[0].object_id}"
  # name.chars.each { |c| c.upcase! }
  arr_chars = name.chars
  puts "arr_chars object_id = #{arr_chars.object_id}"
  puts "arr_chars[0] object_id = #{arr_chars[0].object_id}"
  arr_chars.each do |c|
    puts "c object_id = #{c.object_id}"
    c.upcase!
  end

  puts 'HEY ' + name
end

This is because name.chars returns an array of characters containing new string
objects 'y', 'o', 'u'.
c.upcase! method mutates these strings in the array returned by name.chars
but not name string...

A solution is to call #upcase! method directly on name:

def shout_out_to(name)
  name.upcase!
  puts 'HEY ' + name
end

or to use #upcase:
def shout_out_to(name)
  puts 'HEY ' + name.upcase
end

=end
