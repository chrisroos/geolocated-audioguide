require 'sinatra'
require 'haml'

get '/' do
  redirect '/index.html'
end

get '/audio-test' do
  haml :audio_test
end

run Sinatra::Application