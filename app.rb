require 'sinatra/base'


class App < Sinatra::Base

  get '/newbook' do
   @books = %w(author title notes)
    erb :newbook
  end

   post '/faves' do
    erb :faves
  end

end