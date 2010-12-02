require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/audio-test' do
  haml :audio_test
end

run Sinatra::Application