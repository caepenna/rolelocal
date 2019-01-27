Rails.application.routes.draw do
  root to: "artists#index"
  resources :events
  resources :artists
  get '/home' => 'home#index'
  get '/' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
