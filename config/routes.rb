Rails.application.routes.draw do

  get '/tasks/index', to: 'tasks#index', as: 'index'
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

  get '/tasks/:id', to: 'tasks#show', as: 'task'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
