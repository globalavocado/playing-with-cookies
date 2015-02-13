require 'sinatra/base'

class CookieGame < Sinatra::Base
enable :sessions

  get '/' do
    session["user"] ||= nil
    erb :index
  end

  get '/intro' do # request
  	erb :intro
	end

  post '/intro' do
    session["user"] = params[:player]
    redirect '/'
  end

  get '/still' do
    player = session["user"]
    erb :still
  end 

  get '/still_here' do
    player = session["user"]
    erb :still_here
  end 

  get '/bye' do
    session["user"] = nil
    erb :bye
  end


  run! if app_file == $0
end
