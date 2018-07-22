class HashtagMailer < ApplicationMailer

  def tag_promotion(user)
    @user = user
    mail(:to => @user.email,
         :subject => 'Welcome to Heomax Promotion challenge')
  end
end
