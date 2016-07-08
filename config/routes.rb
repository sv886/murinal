Rails.application.routes.draw do

  root 'posts#index'

  resources :posts, except: :index
  resources :users, except: :index

  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy', as: :logout

end
