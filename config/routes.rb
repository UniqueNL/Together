Rails.application.routes.draw do
  resources :dashboard

  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'chat_rooms_controller/index'

  resources :chat_rooms, only: [:new, :create, :show, :index, :destroy]
  resources :messages

  root 'chat_rooms#index'

  mount ActionCable.server => '/cable'

  get '/users', to: 'chat_rooms#index'
end
