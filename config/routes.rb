Rails.application.routes.draw do
  get 'tasks/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# collection of tasks
  get '/tasks', to: 'tasks#index', as: 'tasks'
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

# single tasks
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'

  patch '/tasks/:id/complete', to: 'tasks#complete', as: 'completed_tasks'
  patch '/tasks/:id/uncomplete', to: 'tasks#uncomplete', as: 'uncompleted_tasks'

end
