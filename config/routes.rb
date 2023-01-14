Rails.application.routes.draw do
  resources :users
  #get '/articles', to: 'articles#index'
  resources :articles, only: [:index,:show,:edit, :update]
end

