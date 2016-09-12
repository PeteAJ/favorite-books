require 'sinatra/base'
require_relative 'config/environment'


class App < Sinatra::Base


  get '/' do
    erb :index
  end

  get '/newbook' do
    erb :newbook
  end

   post '/faves' do
    erb :faves
  end

end