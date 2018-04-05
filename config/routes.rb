Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # always do collection before individual ones
  root "tasks#index"

  get "/tasks/new", to: "tasks#new", as: "new_task"
  post "/tasks", to: "tasks#create", as: "tasks"

  get '/tasks/:id/edit', to: 'tasks#edit', as: "edit_task"
  patch '/tasks/:id', to: 'tasks#update'

  get "/tasks", to: "tasks#index"
  get "/tasks/:id", to: "tasks#show", as: "task"

  delete "/tasks/:id", to: "tasks#destroy", as: "delete_task"


  # Non-restful routes
  post "/tasks/:id", to: "tasks#complete", as: "complete_task"
end
