Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index', as: 'tasks'
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks',to: 'tasks#create'
  get '/tasks/:id/edit', to: 'tasks#edit#', as: 'edit_task'
  get '/tasks/:id', to: 'tasks#show',as: 'task'
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'
  patch '/tasks/:id/completed', to: 'tasks#completed', as: 'completed_task'
end
