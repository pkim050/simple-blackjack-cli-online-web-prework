def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_card = deal_card
  second_card = deal_card
  total_card = first_card + second_card
  display_card_total(total_card)
end

def hit?(card_total)
  # code hit? here
  loop do
    prompt_user
    users_input = get_user_input
    if users_input == "h"
      another_card = deal_card
      return card_total += another_card
    elsif users_input == "s"
      return card_total
    else
      invalid_command
    end
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
  end
  end_game(card_total)
end
    
