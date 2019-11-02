Rails.application.routes.draw do
  resources :events
  post "/new_ticket", to: 'dashboard#create_ticket'
  delete "/destroy_ticket", to: 'dashboard#destroy_ticket'
  devise_for :users
  root to: 'dashboard#index'
end
