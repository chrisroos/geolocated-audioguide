require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/audio-test' do
  haml :audio_test
end

get '/geolocate-test' do
  haml :geolocate_test
end

get '/geonames-test' do
  haml :geonames_test
end

get '/guide' do
  haml :guide
end

run Sinatra::Application