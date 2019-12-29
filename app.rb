require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @Tranzlated_text = PigLatinizer.new(params[:user_text])

    erb :results
  end
end