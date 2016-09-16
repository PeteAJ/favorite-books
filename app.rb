require 'sinatra/base'
require_relative 'config/environment'


class App < Sinatra::Base


  get '/' do
    erb :index
  end

  get '/new' do
    erb :'readers/new'
  end



   post '/readers' do
    @reader = Reader.new(params[:reader])


   params[:reader][:books].each do |details|
    Book.new(details)
   end
    @books = Book.all
    erb :'readers/show'
  end


end