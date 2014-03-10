require 'spec_helper'
require "mailer"


describe Mailer do
  
  it "sends email" do
    Pony.should_receive(:mail) do |params|
      params[:to].should == "test@gmail.com"
      params[:body].should include("There is a new commit")
    end
    Mailer.send_email
  end
  
end