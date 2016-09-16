require 'sinatra/base'
require_relative 'config/environment'


class App < Sinatra::Base


  get '/' do
    erb :index
  end

  get '/new' do
    erb :newbook
  end

   post '/book' do
    @book = Book.new(params[:author],params[:title],params[:year],params[:notes])
    erb :book
  end

end