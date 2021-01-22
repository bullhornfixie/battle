require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Welcome to Narnia"
end

get '/beach' do 
  "Palm tree"
end 

get '/journey' do 
  "OZ"
end

get '/fishing' do
  "Tuna"
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

# testing3



