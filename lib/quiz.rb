require './lib/answer'
require './lib/question'
require 'pg'

class Quiz
  attr_reader :questions

  def self.questions
    quiz_questions = []
    questions = connect.exec('
      select q.id,
      q.question,
      q.correct_answer,
      a.id,
      a.number,
      a.answer
      from questions q
      inner join answers a on a.question_id = q.id
      order by q.id, a.number;
    ')
    prev_question_id = -1
    question = nil
    questions.each_row do |row|
      if !(prev_question_id == row[0])
        question = Question.new(row[0], row[1], row[2]) unless prev_question_id == row[0]
      end
      question.answers << Answer.new(row[4], row[5], row[3])
      quiz_questions << question if !(prev_question_id == row[0])
      prev_question_id = row[0]
    end
    quiz_questions
  end

  def self.connect
    PG.connect(dbname: 'BrowserQuiz_test')
  end
  
end
