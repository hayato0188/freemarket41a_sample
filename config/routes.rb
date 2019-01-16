Rails.application.routes.draw do

  devise_for :users

  root 'items#index'

  resources :items, only:[:index, :new, :create, :show, :edit] do
    get :detail
    get :transaction
  end


  resources :users do
    get :logout
    get :choice, on: :collection
    post :follow, on: :member
    get :telephone
    get 'users' => 'users#new'
    get :profile

    resources :items, shallow: true do
      collection do
        get :list
      end
      collection do
        get :detail
      end
    end

  end

  resources :addresses, only:[:new, :create]

end
