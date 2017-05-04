Rails.application.routes.draw do

  get 'pages/contact', to: 'pages#contact'

  resources :exhibits
  resources :stylists
  resources :services
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
