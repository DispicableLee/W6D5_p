Rails.application.routes.draw do
  resources :cats
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "cats#index"
  resources :cats, only: [:index, :show, :new, :create, :edit, :update]
end
