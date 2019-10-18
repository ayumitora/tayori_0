Rails.application.routes.draw do
  get 'home/index'
  get 'home/show'
  root to: "home#index"

  devise_for :customers, controllers: {
    sessions: 'customers/sessions'
  }

  devise_for :makers, controllers: {
    sessions: 'makers/sessions'
  }

  resources :evaluates do
    resources :maker_comments
    resources :customer_comments
  end

  resources :products
  resources :makers
  resources :customers
  mount LetterOpenerWeb::Engine, at: "/letter_opener"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# 例
#   devise_for :users, :controllers => {
#     :registrations => 'users/registrations',
#     :sessions => 'users/sessions'
#   }

#   devise_scope :user do
#     get "sign_in", :to => "users/sessions#new"
#     get "sign_out", :to => "users/sessions#destroy"
#   end