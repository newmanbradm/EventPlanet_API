Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :events do
        resources :supplies
        resources :posts
        resources :comments
      end
      resources :venues
      resources :event_venues
      resources :guests
      resources :event_guests
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
