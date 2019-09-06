Rails.application.routes.draw do
  resources :products
  root to: 'products#index'
  post '/products/new' => 'products#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
