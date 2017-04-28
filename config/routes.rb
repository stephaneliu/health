Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  mount_griddler # defaults path /email_processor
end
