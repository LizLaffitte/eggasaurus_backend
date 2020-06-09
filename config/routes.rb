Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :dinos, only: [:index, :show, :update, :create, :destroy]
      resources :species, only: [:index]
    end
  end

  resources :users, only: [:create]
  post '/auth', to: "sessions#create"
end
