require 'sinatra/base'

class CookieGame < Sinatra::Base
enable :sessions


get '/' do
  session["user"] ||= nil
  erb :index
end

get '/intro' do 
  erb :intro
end

post '/intro' do
  session["user"] = params[:player]
  redirect '/'
end

get '/bye' do
  session["user"] = nil
  erb :bye
end

get '/still' do
  player = params[:player]
  erb :still
end  

  run! if app_file == $0
end
