class ClientPagesController < ApplicationController

  before_action :authenticate_client!

  def index
    @kil = Client.all
  end

  def show
  end

  def edit
  end

  def new
  end

  def update

  end

  def destroy
    @kill = Client.find(params[:id])
    @kill.destroy
    redirect_to client_pages_path
  end

  def command
    
  end

  def mail
    ClientMailer.with(client: current_client).welcome_email.deliver_now
  
  end

  def new_commentaire
    @commentaire = Commentaire.new
    @commentaires = Commentaire.all

  end


  # def create_commentaire
    

  #   @message = params.require(:commentaire).permit(:message)
  #   @com = Commentaire.new
  #   @com.message = @message[:message]
  #   @com.client = current_client
  #   @com.save 
    
  #   respond_to do |f|
  #     f.html { redirect_to new_commentaire_path}
  #     f.js
  #   end
   
  
  # end


  def create_commentaire
    

    
    @com = Commentaire.new(params.require(:commentaire).permit(:message))
   
    @com.client = current_client
    @com.save 
    respond_to do |f|
      f.html { redirect_to new_commentaire_path}
      f.js
    end
   
  
  end
end
