Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :customers
  # get 'makers/index'
  # get 'makers/show'
  # get 'makers/new'
  # get 'makers/index'
  devise_for :makers, controllers: {
    sessions: 'makers/sessions'
  }

  resources :products
  resources :makers
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end