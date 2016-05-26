Rails.application.routes.draw do
  resources :appointments
  resources :exercises
  resources :bodyareas
  resources :typesofexercises

  root 'typesofexercises#index'
end
