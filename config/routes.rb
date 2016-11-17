Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dashboard
  resources :chat_rooms
  resources :messages
  resources :themes

  root 'chat_rooms#index'

  get 'chat_rooms_controller/index'
  get '/users', to: 'chat_rooms#index'


  authenticate :user do
    mount ActionCable.server => '/cable'
  end
end
