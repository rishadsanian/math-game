# frozen_string_literal: true

require_relative 'game'
# starts new game
current_game = Game.new
# Keep the game going till one of the players have zero lives
while current_game.game_over == false
  # display question
  current_game.display_question
  # take user input as a variable
  input = current_game.take_input
  # pass user input variable to validation and display validation
  current_game.display_validation(input)
  # display scores after each round
  current_game.display_scores
  # check if any lives are at zero
  if current_game.game_over
    # diplay winner and game over message
    current_game.display_winner
  else
    # start new round
    current_game.new_turn
  end
end
