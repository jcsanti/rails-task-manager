Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #1. list all tasks

  #show all tasks (get)
  get 'tasks' => 'tasks#index'

  # #2. create a task
  # #show form to gather user input(get)
  get 'tasks/new' => 'tasks#new'
  # #save newly created task to db (post)
  post 'tasks' => 'tasks#create'

  #1bis. show one task (get)
  get 'tasks/:id' => 'tasks#show', as: :task

  # #3. edit a task
  # #show form to gather user input (get)
  get 'tasks/:id/edit' => 'tasks#edit', as: :edit_task
  # #persist task to db (patch)
  patch 'tasks/:id' => 'tasks#update'

  #4. delete a task
  delete 'tasks/:id' => 'tasks#destroy'
end
