class Answer
  attr_reader :id, :number, :answer

  def initialize(number, answer, id = nil)
    @number = number
    @answer = answer
    @id = id
  end
end
