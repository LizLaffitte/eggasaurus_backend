Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :dinos, only: [:index, :show, :update, :create]
      resources :species, only: [:index]
    end
  end

  resources :users, only: [:create]
end
