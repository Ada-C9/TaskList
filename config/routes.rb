Rails.application.routes.draw do


  root 'tasks#index'
  resources :tasks
  patch '/tasks/:id/complete', to: 'tasks#complete', as: 'complete_task'


  #
  # get '/tasks', to: 'tasks#index', as: "show_tasks"
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # post '/tasks', to: 'tasks#create'
  # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # get '/tasks/:id', to: 'tasks#show', as: 'task'
  # patch '/tasks/:id', to: 'tasks#update'
  #
  #
  # delete '/tasks/:id', to: 'tasks#destroy'

end
