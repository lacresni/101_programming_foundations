text = File.read("example.txt")
# text = File.read("pg84.txt")

paragraphs = text.split(/\n{2}/)

longest = paragraphs.max_by { |paragraph| paragraph.split.size }
longest.strip!

puts "The longest paragraph in the text is #{longest.split.size} words long :"
puts longest
