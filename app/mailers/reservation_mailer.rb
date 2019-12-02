class ReservationMailer < ApplicationMailer


    default from: 'michael77rakotovao@gmail.fr'
 
  def reservation_email(panier, qr)
    @qr = qr
    @session_panier = panier
    @prestataire = params[:prestataire]
    @url  = 'http://localhost:3000/prestataire_pages/show#'
    mail(to: @prestataire.email, subject: 'Misaotra Anao Nisafidy ny entana ')
  end

end
