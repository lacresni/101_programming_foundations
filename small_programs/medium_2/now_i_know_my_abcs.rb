def spelling_block_available?(char, blocks)
  blocks.each do |block|
    return true if block.include?(char)
  end

  false
end

def find_block_index(char, blocks)
  blocks.each_with_index do |block, index|
    return index if block.include?(char)
  end
end

def block_word?(word)
  spelling_blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'],
                     ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'],
                     ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'],
                     ['Z', 'M']]

  word.chars.all? do |char|
    result = spelling_block_available?(char.upcase, spelling_blocks)
    if result
      index_found = find_block_index(char.upcase, spelling_blocks)
      spelling_blocks.delete_at(index_found)
    end
    result
  end
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
