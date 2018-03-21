text = File.read("example.txt")
# text = File.read("pg84.txt")

words = text.split

longest = words.max_by(&:size)
longest.strip!

puts "The longest word in the text is #{longest.size} long :"
puts longest
