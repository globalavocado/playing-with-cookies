require 'sinatra/base'

class CookieGame < Sinatra::Base
enable :sessions

  get '/' do
  	session["user"] ||= nil
    erb :index
  end

	run! if app_file == $0
end
