require 'rubygems'
require 'sinatra'
# require 'byebug'

# EXAMPLE 1
# enable :sessions

# get '/' do
#   session["value"] ||= "Hello world!"
#   "The cookie you've created contains the value: #{session["value"]}"
# end

# EXAMPLE 2
enable :sessions

get '/' do
  #byebug
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
 
 # EXAMPLE 3

# get '/' do
#   @@expiration_date = Time.now + (60 * 2) \
#   unless request.cookies.key?('some_options') && request.cookies.key?('other_options')
#   erb :index
# end

# get '/some_options' do
#   @some_cookie = request.cookies["some_options"]
#   erb :some_options
# end

# post '/some_options' do  
#   response.set_cookie('some_options', :value => cookie_values(params), :expires => @@expiration_date)
#   redirect '/'
# end

# get '/other_options' do
#   @other_cookie = request.cookies["other_options"]
#   erb :other_options
# end

# post '/other_options' do
#   response.set_cookie('other_options', :value => cookie_values(params),:expires => @@expiration_date)
#   redirect '/'
# end

# helpers do
#   def cookie_values(parameters)
#     values = {}
#     parameters.each do |key, value|
#       case key
#       when 'options'
#         values[value] = true
#       else
#         values[key] = true
#       end
#     end
#     values
#   end
# end


# Example 4
# require 'sinatra'

# configure do
#   enable :sessions
# end

# get '/' do
#   session.id
# end