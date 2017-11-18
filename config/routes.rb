Rails.application.routes.draw do

  get 'about', to: 'pages#about'

  get 'services', to: 'pages#services'

  get 'shop', to: 'pages#shop'

  get 'contact', to: 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
