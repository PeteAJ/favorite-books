require 'sinatra/base'
require_relative 'config/environment'


class App < Sinatra::Base

   configure do
    enable :sessions
    set :session_secret, 'printed_matter'
  end


  get '/' do
    erb :index
  end

  get '/new' do
    erb :'readers/new'
  end

  get '/registrations/signup' do
    erb :'/registrations/signup'
  end

  post '/registrations' do
    
    redirect :home
  end

  get '/sessions/login' do
    erb :'sessions/login'
  end

  post '/sessions' do
    redirect :home
  end

  get '/sessions/logout' do 
    redirect '/'
  end

   post '/readers' do
  
    @reader = Readers.new(params[:reader])


   params[:reader][:books].each do |details|
    Book.new(details)
   end
    @books = Book.all
    erb :'readers/show'
  end

   post '/checkout' do 
    session[:reader] = params[:reader]
    @session = session
    erb :index
  end


end