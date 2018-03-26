Rails.application.routes.draw do
  get '/tasks/new', to:'tasks#new', as: 'new_task'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  get '/tasks', to:'tasks#index', as: 'tasks'
  post '/tasks', to: 'tasks#create'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'
  patch '/tasks/:id/mark_complete', to: 'tasks#mark_complete', as: 'mark_task_complete'
  delete '/tasks/:id', to: 'tasks#destroy'
end
