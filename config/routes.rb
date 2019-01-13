Rails.application.routes.draw do

  devise_for :users

  root 'items#index'

  resources :users do
    get :logout
    get :choice, on: :collection
    post :follow, on: :member
    get :telephone
    get 'users' => 'users#new'
    get :profile
    resources :items, shallow: true
  end

  resources :addresses, only:[:new, :create]

end
