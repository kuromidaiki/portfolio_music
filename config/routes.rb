Rails.application.routes.draw do
  get 'sessions/new'
  root "static_pages#home"
  get '/signup', to:'users#new'
  get '/home',   to:'static_pages#home'
  get '/about',  to:'static_pages#about'
  post '/retrieval/:word', to:'static_pages#retrieval'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :microposts,          only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
