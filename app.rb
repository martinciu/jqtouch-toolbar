require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/toolbar' do
  haml :toolbar
end

get '/notoolbar' do
  haml :notoolbar
end
