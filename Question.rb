class Question
  attr_accessor :question, :result

  def initialize
    generate_question
  end

  def generate_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    @result = num1 + num2
    @question = "What does #{num1} plus #{num2} equal?"
  end
end
