Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index'

  get 'tasks/show', to: 'tasks#show', as: 'task'

  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks/create', to: 'tasks#create'

  get 'tasks/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'

  patch 'tasks/:id', to: 'tasks#mark_complete'

  get 'tasks/:id', to: 'tasks#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
