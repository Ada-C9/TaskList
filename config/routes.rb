Rails.application.routes.draw do
  get 'tasks/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # always do collection before individual ones
  get '/tasks/new', to: 'tasks#new'
  get '/tasks', to: 'tasks#index'
  post '/tasks', to: 'tasks#create'

# individual
  get '/tasks/:id', to: 'tasks#show'
  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'
end
