Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  
  #get "/" => "toppages#index"
  #get "/tasks" => "tasks#index"
  #root to: "tasks#index"
  
  resources :tasks  
  
  resources :taskposts, only: [:create, :destroy]
end
