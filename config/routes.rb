Rails.application.routes.draw do

  get "about", to: 'static#about'
  get "contact", to: 'static#contact'

  resources :projects

  root 'projects#index'

end
