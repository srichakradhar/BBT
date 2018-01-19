Rails.application.routes.draw do
  get 'rangers/racers'

  resources :carproducts
  resources :carcategories
  get 'home/welcome'
root to: 'home#welcome'
  devise_for :users
  
devise_scope :user do
  get '/users/sign_out', to: 'devise/sessions#destroy'
end
 get 'display/:id'=>'carcategories#display', as: :display
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
