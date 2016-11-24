Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dashboard
  resources :chat_rooms
  resources :messages
  resources :themes
  resources :admin

  root 'chat_rooms#index'

  get 'chat_rooms_controller/index'
  get '/users', to: 'chat_rooms#index'

  match 'users/:id' => 'users#edit', :via => :update, :as => :admin_update_user
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user

  authenticate :user do
    mount ActionCable.server => '/cable'
  end
end
