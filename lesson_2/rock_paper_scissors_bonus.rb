VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_CHOICES_HASH = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  # key beats elements in the array
  hash_result = {
    'rock' => %w(scissors lizard),
    'paper' => %w(rock spock),
    'scissors' => %w(paper lizard),
    'lizard' => %w(spock paper),
    'spock' => %w(scissors rock)
  }

  hash_result[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

def compute_score!(player, computer, score)
  if win?(player, computer)
    score[:player] += 1
  elsif win?(computer, player)
    score[:computer] += 1
  end
end

def display_score(score)
  prompt("Player: #{score[:player]}   Computer: #{score[:computer]}")
end

hash_score = {
  player: 0,
  computer: 0
}

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')} (r, p, sc, l, sp)")
    choice = gets.chomp.downcase
    break if VALID_CHOICES_HASH.include?(choice)
    puts "That's not a valid choice."
  end

  choice = VALID_CHOICES_HASH[choice]
  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  compute_score!(choice, computer_choice, hash_score)
  display_score(hash_score)

  break if (hash_score[:player] == 5) || (hash_score[:computer] == 5)
  puts
end

if hash_score[:player] == 5
  prompt('Congratulations, you are the Grand Winner!!!')
else
  prompt('Sorry, you lost...')
end

puts
prompt('Thank you for playing. Good bye!')
