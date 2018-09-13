def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card
  card_total += deal_card
  display_card_total(card_total)
  return(card_total)
end

def hit?(card_total)
  prompt_user
  action = get_user_input
    if action == "h"
      card_total += deal_card
    elsif action == "s"
    elsif action != "h" && action != "s"
      invalid_command
      prompt_user
    end
  return(card_total)
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21 do
    hit?(card_total)
    display_card_total(card_total)
    return(card_total)
  end
  end_game(card_total)
end
