class Question
  attr_reader :question, :answer_1, :answer_2, :answer_3, :correct_answer

  def initialize(question, answer_1, answer_2, answer_3, correct_answer)
    @question = question
    @answer_1 = answer_1
    @answer_2 = answer_2
    @answer_3 = answer_3
    @correct_answer = correct_answer
  end
end
