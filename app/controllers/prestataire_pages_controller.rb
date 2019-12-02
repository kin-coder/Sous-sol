class PrestatairePagesController < ApplicationController

  before_action :authenticate_prestataire!

  def index
    PrestataireMailer.with(prestataire: current_prestataire).welcome_email.deliver_now
  end

  
  
  def show
    @books= Book.all 

    if session[:panier].length != 0

      @qr = RQRCode::QRCode.new(session[:panier].to_s).as_svg(module_size: 3).html_safe
    
    end



  end

  def commande
    @book = Book.find(params[:id])
    session[:panier].push ({
      name: @book.name,
      prix: @book.price
    })

    redirect_to show_commande_path
  end

  def reservation 
    
    @qr = RQRCode::QRCode.new(session[:panier][0]['name']).as_svg.html_safe
    ReservationMailer.with(prestataire: current_prestataire).reservation_email(session[:panier], @qr).deliver_now
  end



  def show_QR

     @prestataire = current_prestataire
    #  @qr = RQRCode::QRCode.new("coucou").to_img.resize(200, 200).to_data_url
    @qr = RQRCode::QRCode.new(session[:panier].to_s).as_svg(module_size: 3).html_safe
    
    
    # respond_to do |f|
    #   f.html
    #   f.js
    # end
    

  end





  def edit
  end

  def new

  end

  def update
  end

  def destroy
  end

  def book_show
    @books = Book.all 

  end

  def reservation_book
    @book = Book.find(params[:id])

    # @prix = Book.price

    respond_to do |f|
      f.html { redirect_to book_show_path}
      f.js
    end
  
  end


end
