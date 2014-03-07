require 'sinatra'
require 'pony'

get '/' do
  "Hola Enfermera"
end

post '/push' do

options = {
  :to => 'oscar-heroku@tacitknowledge.com',
  :from => 'oscar@tacitknowledge.com',
  :subject => 'New commit',
  :body => 'There is a new commit',
  :via => :smtp,
  :via_options => {
    :address => 'smtp.gmail.com',
    :port => '587',
    :domain => 'tacitknowledge.com',
    :user_name => 'ogonzalez@tacitknowledge.com',
    :password => 'ja-pazy-lo-ren',
    :authentication => :plain,
    :enable_starttls_auto => true
    }
  } 

  Pony.mail(options)

end
