class Question
  attr_reader :id, :question, :correct_answer, :answers

  def initialize(id = nil, question = '', correct_answer = nil, answers = [])
    @id = id
    @question = question
    @correct_answer = correct_answer
    @answers = answers
  end
end
