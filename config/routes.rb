Rails.application.routes.draw do
  get 'acceuils/index'
  get 'prestataire_pages/index'

  get 'prestataire_pages/show', to: "prestataire_pages#show", as: "show_commande"
  
  get 'prestataire_pages/edit'
  get 'prestataire_pages/new'
  get 'prestataire_pages/update'
  get 'prestataire_pages/destroy'
  get 'client_pages/index'
  get 'client_pages/show'
  get 'client_pages/edit'
  get 'client_pages/new'
  get 'client_pages/update'
  get 'client_pages/destroy'


  get "/prestataire_pages/show_qr", to: "prestataire_pages#show_QR", as: "show_qr"


  
  get "/prestataire_pages", to: "prestataire_pages#reservation", as: "reservation_email"


  get "/book_show", to: "prestataire_pages#book_show", as: "book_show"
  get "/reservation_book/:id", to: "prestataire_pages#reservation_book", as: "reservation_book"

  get "/client_pages", to: "client_pages#command"
  get "/client_pages/mail", to: "client_pages#mail"


  get "/commandes/:id", to: "prestataire_pages#commande", as: "commande_book"



  get "/new_commentaire", to: "client_pages#new_commentaire", as: "new_commentaire"
  post "/create_commentaire", to: "client_pages#create_commentaire", as: "create_commentaire"

  delete "/mamaf/:id", to: "client_pages#destroy", as: "delete_client"


  root "acceuils#index"
  devise_for :prestataires
  devise_for :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
