module Mailer
  
  def self.send_email
    
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

      begin
        Pony.mail(options)    
      rescue Exception => e
        puts "caught exception #{e}! ohnoes!"
      end
  end
  
end