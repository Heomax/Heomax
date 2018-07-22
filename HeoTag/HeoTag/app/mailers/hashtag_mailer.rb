class HashtagMailer < ApplicationMailer

  default from: 'contact@heomax.io'

  def tag_promotion(subscription)
    @subscription= subscription[:subscription]
    mail(:to => @subscription[:email],
         :subject => 'Welcome to Heomax Promotion challenge')
  end
end
