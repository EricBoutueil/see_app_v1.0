Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  scope '(:locale)', locale: /en|es/ do
    root to: 'harbours#index'
    resources :movements, only:[:index]
    resources :harbours, only:[:index]
  end

end
