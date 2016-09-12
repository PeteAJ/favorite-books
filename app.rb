require 'sinatra/base'


class App < Sinatra::Base

  get '/newbook' do
    erb :newbook
  end

   post '/faves' do
    erb :faves
  end

end