require 'sinatra'
require './lib/mailer'

get '/' do
  "Hola, Enfermera!"
end

post '/push' do
  Mailer.send_email
end
