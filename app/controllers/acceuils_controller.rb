class AcceuilsController < ApplicationController
  def index
    session[:panier] = []
    
  end
end
