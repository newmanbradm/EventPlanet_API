Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update]
      resources :events, only: [:index, :show, :create, :update, :destroy]
      resources :supplies, only: [:index, :create, :update, :destroy]
      resources :posts, only: [:index, :create, :update, :destroy]
      resources :comments, only: [:index, :create, :update, :destroy]
      resources :venues, only: [:index, :create, :update]
      resources :event_venues, only: [:index, :create, :update, :destroy]
      resources :guests, only: [:index, :create, :update]
      resources :event_guests, only: [:index, :create, :update, :destroy]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
