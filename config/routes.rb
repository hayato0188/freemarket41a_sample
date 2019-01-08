Rails.application.routes.draw do
  root 'items#index'
  resources :items, only:[:index, :new, :create, :show] do
    get 'sample'
  end
end
