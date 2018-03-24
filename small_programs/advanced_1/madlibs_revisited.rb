HASH_DATA = {
  "noun" => ['fox', 'dog', 'head', 'leg'],
  "verb" => ['licks', 'jumps', 'bites', 'lifts'],
  "adjective" => ['sleepy', 'quick', 'lazy', 'ugly'],
  "adverb" => ['noisily', 'lazily', 'easily', 'excitedly']
}

def extract_params(line)
  line.split.each_with_object([]) do |word, arr|
    arr << word.delete("^a-z") if word.start_with?("%{")
  end
end

def print_line(line)
  param_list = extract_params(line)
  # Choose a random word
  param_list.map! { |param| HASH_DATA[param].sample }
  # Replace %{...} by %s in line
  line.gsub!(/%\{\w*\}/, "%s")
  # Output result
  puts format(line, *param_list)
end

File.read("madlibs.txt").split("\n").each { |line| print_line(line) }
