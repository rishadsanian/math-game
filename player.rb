# frozen_string_literal: true

# Class for player initializes with name and lives
class Player
  attr_reader :name, :lives

  # Initialize name and lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  # Method to decrease life
  def wrong_answer
    @lives -= 1
  end
end
