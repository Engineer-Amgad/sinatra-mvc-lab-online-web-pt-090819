require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @Translated_text = PigLatinizer.new()

    erb :results
  end
end