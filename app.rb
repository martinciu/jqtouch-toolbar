require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/home' do
  haml :home
end

get '/notoolbar' do
  haml :notoolbar
end

get '/search' do
  haml :search
end

post '/search' do
  unless params[:q].empty?
    haml :results
  else
    @error = "Wpisz coś ziom!"
    haml :search
  end
end

get '/:page' do
  @page = params[:page]
  @items = 100.times.map {|n| [@page, n].join(" ")}
  haml :list
end
