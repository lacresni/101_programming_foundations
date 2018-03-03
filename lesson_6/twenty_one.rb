# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

PLAYER_ID = :player
DEALER_ID = :dealer

SUITE = %w[2 3 4 5 6 7 8 9 10 jack queen king ace]
CARD_VALUES = { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
                '8' => 8, '9' => 9, '10' => 10, 'jack' => 10, 'queen' => 10,
                'king' => 10 }

TWENTY_ONE_SCORE = 21
DEALER_MIN_SCORE = 17

ACE_MAX_VALUE = 11
ACE_DEFAULT_VALUE = 1

FULL_DISPLAY = true

def prompt(message)
  puts "=> #{message}"
end

def initialize_deck
  SUITE * 4
end

def deal_card!(deck)
  deck.delete_at(rand(deck.size))
end

def deal_cards!(deck)
  cards = []
  2.times { cards << deal_card!(deck) }
  cards
end

def joinand(deck, separator = ', ', word = 'and')
  arr = deck.clone
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(separator)
  end
end

def display_decks(dealer_deck, player_deck, full = false)
  display_deck(dealer_deck, DEALER_ID, full)
  display_deck(player_deck, PLAYER_ID, full)
end

def display_deck(deck, player, full = false)
  player_cards = joinand(deck)

  if player == DEALER_ID && !full
    player_cards = "#{deck[0]} and unknown card"
  else
    player_cards.concat(" for a total of #{compute_deck_score(deck)}")
  end

  str = (player == DEALER_ID ? "Dealer has:" : "You have:")
  str.concat(" #{player_cards}")
  puts str
end

def display_result(player_score, dealer_score)
  if player_score > TWENTY_ONE_SCORE
    puts "Busted... You lose..."
  elsif dealer_score > TWENTY_ONE_SCORE
    puts "Dealer Busted... You win!!!"
  elsif player_score > dealer_score
    puts "You win!!"
  elsif player_score < dealer_score
    puts "You lose..."
  else
    puts "It's a tie!"
  end
end

def calculating_aces(nb_aces, current_score)
  nb_aces.downto(1) do |nb_ace|
    score = current_score + nb_ace * ACE_MAX_VALUE
    current_score +=
      (score > TWENTY_ONE_SCORE ? ACE_DEFAULT_VALUE : ACE_MAX_VALUE)
  end
  current_score
end

def compute_deck_score(deck)
  score = 0
  deck.each do |card|
    score += (card == 'ace' ? 0 : CARD_VALUES[card])
  end
  nb_aces = deck.count('ace')
  calculating_aces(nb_aces, score)
end

def busted?(deck)
  compute_deck_score(deck) > TWENTY_ONE_SCORE
end

loop do
  system 'clear'

  my_deck = initialize_deck

  # Deal cards to player and dealer
  player_deck = deal_cards!(my_deck)
  dealer_deck = deal_cards!(my_deck)

  # Display initial decks
  display_decks(dealer_deck, player_deck)

  # Player turn
  loop do
    answer = ''
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      answer = gets.chomp.downcase
      break if ['h', 's'].include?(answer)
      prompt "Sorry, you must enter 'h' or 's'"
    end
    if answer == 'h'
      player_deck << deal_card!(my_deck)
      display_decks(dealer_deck, player_deck)
    end
    break if answer == 's' || busted?(player_deck)
  end

  if busted?(player_deck)
    player_score = compute_deck_score(player_deck)
    dealer_score = compute_deck_score(dealer_deck)
  else
    puts "You chose to stay!"

    prompt "Dealer turn"
    loop do
      display_decks(dealer_deck, player_deck, FULL_DISPLAY)

      break if compute_deck_score(dealer_deck) >= DEALER_MIN_SCORE ||
               busted?(dealer_deck)

      prompt "Dealer hits"
      dealer_deck << deal_card!(my_deck)
    end
    prompt "Dealer stays"

    player_score = compute_deck_score(player_deck)
    dealer_score = compute_deck_score(dealer_deck)

    if !busted?(dealer_deck)
      puts "You have #{player_score}, dealer has #{dealer_score}"
    end
  end
  display_result(player_score, dealer_score)

  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Twenty One! Good bye!"
