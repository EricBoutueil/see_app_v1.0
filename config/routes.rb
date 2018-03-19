Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  scope '(:locale)', locale: /en|es/ do
    root to: 'movements#index'
    resources :movements, only:[:index]
  end

end
