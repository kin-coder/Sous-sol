class ClientMailer < ApplicationMailer
    default from: 'michael77rakotovao@gmail.com'
 
  def welcome_email
    @client = params[:client]
    @url  = 'http://localhost:3000/sign_in'
    mail(to: @client.email, subject: 'Miarahaba anao , tonga soa eto aminay')
  end
end
