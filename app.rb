require_relative 'config/environment'
require_relative 'piglatinizer'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/result' do 
    PigLatinizer.new.pigl
    erb :result
  end 
end