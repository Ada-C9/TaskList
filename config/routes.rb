Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index'
  get '/tasks/new', to: 'task#new'
  post '/tasks', to: 'tasks#create'

  # task#new must be in front of tasks#show
  get '/tasks/:id', to: 'task#show'
  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'
end
