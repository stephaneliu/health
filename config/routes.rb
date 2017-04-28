Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  resources :incoming_emails, only: :create
end
