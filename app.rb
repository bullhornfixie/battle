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

get '/cat' do
 erb(:index)
end