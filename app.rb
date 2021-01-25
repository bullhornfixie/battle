require 'sinatra/base'

# submit the form to post '/names' 
# extract the submitted names from the params into the session 
# redirect to get '/play'
# extract the names from the session to instance variables

class Battle < Sinatra::Base 
  enable :sessions

  get '/' do
    erb :index #create form and submit to post /names
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play' #extract names and re-direct to /play
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play #display names
  end

  run! if app_file == $0
end




