Rails.application.routes.draw do
  get 'tasks/index'

  get '/tasks', to: 'tasks#index', as: 'tasks'

# COMPLETE: MAKE NEW FORM AND CREATE ACTION
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

# COMPLETE: MAKE SHOW FORM AND SHOW ACTION
  get '/tasks/:id', to: 'tasks#show', as: 'task'

# COMPLETED: MAKE EDIT FORM AND UPDATE ACTION
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'

# TODO: MAKE DESTROY ACTION
  delete '/tasks/:id', to: 'tasks#destroy'
end
