Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "tasks/form", to: "tasks#display_form", as: :form
  post "tasks", to: "tasks#create"

  get "tasks", to: "tasks#index", as: :menu

  get "tasks/:id", to: "tasks#display", as: :task

  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy", as: :destroy

end
