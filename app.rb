require_relative 'config/environment'
require_relative 'piglatinizer'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/result' do 
    @phrase = PigLatinizer.new.piglatinize(params[:phrase])
    erb :result
  end 
end