class HashtagMailer < ApplicationMailer
default from: 'test@heomax.com'

def send_signup_email(user)
  @user = user
  mail( :to => @user.email,
        :subject => 'Thanks for signing up for our amazing app' )
end

end
