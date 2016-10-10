Rails.application.routes.draw do
  mount Peek::Railtie => '/peek'
  root 'posts#index'
  devise_for :users
  resources :posts, except: :index

end
