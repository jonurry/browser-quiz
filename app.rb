require 'sinatra/base'
require './lib/quiz.rb'

# The Quiz app running in Sinatra
class BrowserQuiz < Sinatra::Base
  enable :sessions

  get '/' do
  end

  get '/question/:id' do
    @question = questions.first
    erb :question_answers
  end

  def questions
    session[:questions] = Quiz.questions if session[:questions].nil?
    session[:questions]
  end

  run! if app_file == $PROGRAM_NAME
end
