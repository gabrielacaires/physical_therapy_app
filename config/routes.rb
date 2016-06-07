Rails.application.routes.draw do
  devise_for :users
  resources :appointments
  resources :exercises
  resources :bodyareas
  resources :typesofexercises

  root "exercises#index"
end
