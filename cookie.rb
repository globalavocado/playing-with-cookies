require 'sinatra/base'

class CookieGame < Sinatra::Base
enable :sessions


  # this is the get request that goes to /
  get '/' do
  	session["user"] ||= nil
    erb :index
  end

  	get '/intro' do # <-this is the name of a request
	#byebug
  	erb :intro
	end

  post '/intro' do
  #byebug
  session["user"] = params[:player]
  redirect '/'
  end

get '/bye' do
  session["user"] = nil
  erb :bye
end

# this is the get request that goes to /still
get '/still' do
player = params[:player]
  erb :still
end  


  # start the server if ruby file executed directly
  run! if app_file == $0
end
