Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :events, only: [:index, :create, :update, :destroy] do
        resources :supplies, only: [:index, :create, :update, :destroy]
        resources :posts, only: [:index, :create, :update, :destroy]
        resources :comments, only: [:index, :create, :update, :destroy]
      end
      resources :venues, only: [:index, :create, :update]
      resources :event_venues, only: [:index, :create, :update, :destroy]
      resources :guests, only: [:index, :create, :update]
      resources :event_guests, only: [:index, :create, :update, :destroy]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
