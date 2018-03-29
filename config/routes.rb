Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'tasks#index'
  resources :tasks

  patch 'tasks/:id/complete', to: 'tasks#mark_complete', as: 'task_complete'
end
