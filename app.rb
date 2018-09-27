require 'sinatra/base'

# The Quiz app running in Sinatra
class BrowserQuiz < Sinatra::Base
  get '/' do
  end

  get '/question' do
    erb :question_answers
  end

  run! if app_file == $PROGRAM_NAME
end
