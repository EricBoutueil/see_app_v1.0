Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  scope '(:locale)', locale: /en|es/ do

    root to: 'harbours#index'
    resources :harbours, only:[:index]
    # resources :movements, only:[:index]

    # namespace :api, defaults: { format: :json } do
    #   namespace :v1 do
    #     resources :harbours, only: [ :index ]
    #   end
    # end

  end
end
