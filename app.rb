require 'sinatra/base'

class BrowserQuiz < Sinatra::Base
  get '/' do

  end

  run! if app_file == $0
end
