Rails.application.routes.draw do

  patch '/tasks/:id/complete', to: 'tasks#complete', as: 'mark_complete'
  resources :tasks

  root 'tasks#index'
  # root_path exists
  #
  # get '/tasks', to: 'tasks#index', as: 'tasks'
  #
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  #
  # post '/tasks', to: 'tasks#create'
  #
  # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  #
  # get '/tasks/:id', to: 'tasks#show', as: 'task'
  #
  # patch '/tasks/:id', to: 'tasks#update'
  #
  # delete '/tasks/:id', to: 'tasks#destroy'

  # patch '/tasks/:id/complete', to: 'tasks#complete', as: 'mark_complete'
end
