class PrestataireMailer < ApplicationMailer

    default from: 'michael77rakotovao@gmail.fr'
 
  def welcome_email
    @prestataire = params[:prestataire]
    @url  = 'http://localhost:3000/prestataires/sign_in'
    mail(to: @prestataire.email, subject: 'Tongasoa eto @ SeraSera')
  end
end
