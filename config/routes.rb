Rails.application.routes.draw do
  root "application#hello"

  get '/login', to: 'sessions#new'

  post 'sessions/create', to: 'sessions#create'

  get 'secrets/show', to: 'secrets#show'

  get 'sessions/destroy', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
