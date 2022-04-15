Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'bicis', to: 'bici#index'
  get 'bicis/new', to: 'bici#new'
  post 'bicis', to: 'bici#create'
  get 'bicis/:id', to: 'bici#show', as: :bici
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
