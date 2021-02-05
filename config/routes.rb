Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'stardew_objects#index'
  get '/stardew_objects', to: 'stardew_objects#index'
end
