Rails.application.routes.draw do
  mount_griddler # defaults path /email_processor
  root 'home#index'
  devise_for :users
end
