Rails.application.routes.draw do
  devise_for :users
  root to: 'movements#index'

  resources :movements, only:[:index]

end
