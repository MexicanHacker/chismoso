require 'rack/test'
require './app'

describe 'The app' do
  include Rack::Test::Methods

  def app
     Sinatra::Application
  end

  it "should be testable" do
    get '/'
    last_response.should be_ok
    last_response.body.should eql 'Hola, Enfermera!'
  end

  it "should test push" do
    post '/push'
    last_response.should be_ok    
  end

end