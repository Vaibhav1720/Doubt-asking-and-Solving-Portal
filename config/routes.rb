Rails.application.routes.draw do
  # devise_for :users
  devise_for :users

  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end


  resources :doubts do
    resources :comments
  end
  # resources :doubts
  # get 'home/index'
  get 'doubts/resolve'
  get 'home/about'
  get 'home/index'
  # root 'home#index'
  root 'doubts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
