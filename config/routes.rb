Rails.application.routes.draw do
  devise_for :makers
  resources :products
  root to: 'makers#index'
  post '/products/new' => 'products#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
