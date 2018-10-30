require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text]) #initiating a new text analyzer instance with the user text from params, assiging it to a instance variable
    erb :results
  end
end
