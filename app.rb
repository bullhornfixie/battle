require 'sinatra'
# http://localhost:4567/

set :session_secret, 'super secret'
# https://groups.google.com/g/sinatrarb/c/pUFSoyQXyQs

get '/' do
  "hello!"
end

get '/secret' do
  "narnia"
end

get '/random-cat' do
  @name = ["Chauncy", "Secil", "Berty"].sample
  erb(:index)
end

get '/cat-form' do 
  erb :cat_form
end 

post '/named-cat' do 
  p params
  @name = params[:name]
  erb(:index)
end

# testing4



