Rails.application.routes.draw do

  root 'gossips#index'
  resources :gossips
  get 'gossips', to: 'gossips#index', as: 'all'
  get 'gossips/new', to: 'gossips#new'
  post'gossips/new', to: 'gossips#create', as:'new'
  resources  :gossips
  get 'gossips/index', to: 'gossips#index'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
