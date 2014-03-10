require 'sinatra'
require 'pony'

get '/' do
  "Hola Enfermera"
end

post '/push' do

options = {
  :to => ENV['MAIL_USER_NAME'],
  :from => ENV['MAIL_USER_NAME'],
  :subject => 'New commit',
  :body => 'There is a new commit',
  :via => :smtp,
  :via_options => {
    :address => 'smtp.gmail.com',
    :user_name => ENV['MAIL_USER_NAME'],
    :password => ENV['MAIL_PASSWORD']
    }
  } 

  Pony.mail(options)
  "Email sent to ENV['MAIL_USER_NAME']"

end
