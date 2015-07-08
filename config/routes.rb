Rails.application.routes.draw do

  devise_for :admins
  get "about", to: 'static#about'
  get "contact", to: 'static#contact'

  resources :projects

  root 'projects#index'

end
