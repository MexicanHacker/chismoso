require 'sinatra'
require 'mailer'

get '/' do
  "Hola Enfermera"
end

post '/push' do
  Mail.send_mail
end
