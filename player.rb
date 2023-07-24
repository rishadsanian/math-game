# Class for player
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
