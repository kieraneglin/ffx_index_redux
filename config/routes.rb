Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :items, only: [:show, :index]
      resources :monsters, only: [:show, :index]
      resources :abilities, only: [:show, :index]
      resources :locations, only: [:show, :index]
    end
  end

  get '*all', to: 'application#mount'
  root 'application#mount'
end
