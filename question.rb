# Class for question
class Question
  attr_reader :prompt

  # initialize
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @prompt = "What is #{@number1} plus #{@number2} equal?"
    @answer = @number1 + @number2
  end

  # Method to validate answer
  def validate_answer(input)
    input.to_i == @answer # converts to integer - edge case if answer is 0 not handled
  end
end
