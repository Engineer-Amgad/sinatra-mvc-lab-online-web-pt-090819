require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    @Translated_text = PigLatinizer.new()

    erb :results
  end
end