# frozen_string_literal: true

require_relative 'player'
require_relative 'question'

# Class for game - handles logic for game interaction
class Game
  attr_writer :input

  # Initialize Game Players and current player"
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
    @question = Question.new
    @input = ''
  end

  # Method to display question
  def display_question
    puts "#{@current_player.name}: #{@question.prompt}"
  end

  # gets user input
  def take_input
    @input = gets.chomp
  end

  # validates answer and responds accordingly
  def display_validation(input)
    if @question.validate_answer(input)
      puts "\nYes, you are correct!"
    else
      puts "\nSeriously? No!"
      @current_player.wrong_answer
    end
  end

  # Check if game is over
  def game_over
    @player1.lives.zero? || @player2.lives.zero?
  end

  # shows score during each turn
  def display_scores
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3 \n"
  end

  # displays winner and score and displays game over messaging
  def display_winner
    winner_p1 = "\n#{@player1.name} wins with a score of #{@player1.lives}/3"
    winner_p2 = "\n#{@player2.name} wins with a score of #{@player2.lives}/3"
    puts @player1.lives > @player2.lives ? winner_p1 : winner_p2
    puts "\n ----- Game Over -----"
    puts 'Good bye!'
  end

  # Method to handle new turn, switch current player, loads new question
  def new_turn
    puts "\n----- NEW TURN -----"
    @current_player = @current_player == @player1 ? @player2 : @player1
    @question = Question.new
  end
end
