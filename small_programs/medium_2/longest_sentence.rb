def split_to_sentences(str)
  sentences = []

  start_index = 0
  current_index = 0

  while current_index < str.size
    if ['.', '?', '!'].include?(str[current_index])
      sentences << str[start_index, current_index - start_index]
      start_index = current_index + 1
    end
    current_index += 1
  end

  sentences
end

def longest_sentence(sentences)
  sentences.max_by { |sentence| sentence.split.size }
end

text = File.read("example.txt")
# text = File.read("pg84.txt")

sentences = split_to_sentences(text)

longest = longest_sentence(sentences)
longest.strip!

puts "The longest sentence in the text is #{longest.split.size} words long :"
puts longest
