require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/toolbar' do
  haml :toolbar
end

get '/toolbar2' do
  haml :toolbar2
end

get '/notoolbar' do
  haml :notoolbar
end
