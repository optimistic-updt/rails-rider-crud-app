Rails.application.routes.draw do
  
  devise_for :users
  root 'riders#index'
  resources :riders

  get '/jsonRiders', :to => 'riders#get_json'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
