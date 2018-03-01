require 'pry'

PLAYER = 'player'
COMPUTER = 'computer'
CHOOSE_PLAYER = 'choose'
FIRST_PLAYER = CHOOSE_PLAYER # "player" "choose"

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(message)
  puts "=> #{message}"
end

# rubocop:disable Metrics/AbcSize
def display_board(board_hash)
  system 'clear'
  puts "#{PLAYER_MARKER} is player. #{COMPUTER_MARKER} is computer."
  puts ""
  puts "     |     |"
  puts "  #{board_hash[1]}  |  #{board_hash[2]}  |  #{board_hash[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board_hash[4]}  |  #{board_hash[5]}  |  #{board_hash[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board_hash[7]}  |  #{board_hash[8]}  |  #{board_hash[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def display_score(player, computer)
  puts "Player: #{player}  Computer: #{computer}"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, separator = ', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr.join(separator).insert(-2, "#{word} ")
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    puts "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(brd, marker)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(marker) == 2 &&
       brd.values_at(*line).count(INITIAL_MARKER) == 1
      return line.select { |position| brd[position] == INITIAL_MARKER }.first
    end
  end
  nil
end

def defense(brd)
  find_at_risk_square(brd, PLAYER_MARKER)
end

def offense(brd)
  find_at_risk_square(brd, COMPUTER_MARKER)
end

def computer_places_piece!(brd)
  square = offense(brd)

  if !square
    square = defense(brd)
  end

  if !square
    square = (brd[5] == INITIAL_MARKER ? 5 : nil)
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def first_player
  if FIRST_PLAYER == CHOOSE_PLAYER
    loop do
      prompt "Choose who starts to play (Type P for player or C for computer):"
      choice = gets.chomp.downcase
      return PLAYER if choice.start_with?('p')
      return COMPUTER if choice.start_with?('c')
      prompt "Wrong choice..."
    end
  else
    FIRST_PLAYER
  end
end

def place_piece!(brd, player)
  if player == PLAYER
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(player)
  player == PLAYER ? COMPUTER : PLAYER
end

loop do
  player_score = 0
  computer_score = 0

  loop do
    board = initialize_board
    current_player = first_player

    loop do
      display_board(board)
      display_score(player_score, computer_score)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      if detect_winner(board) == 'Player'
        player_score += 1
      else
        computer_score += 1
      end
      puts "#{detect_winner(board)} won!"
    else
      puts "It's a tie!"
    end
    puts "Hit a key to continue..."
    gets

    break if player_score >= 5 || computer_score >= 5
  end

  if player_score >= 5
    puts 'Player wins the game!'
  else
    puts 'Computer wins the game!'
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
