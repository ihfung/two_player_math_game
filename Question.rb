class Question
  attr_accessor :question
  def initialize
    @question = question
    @result = result 
  end

  def initialize(result)
  end

  def generate_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    @result = num1 + num2
    "What does #{num1} plus #{num2} equal?"
  end
end