Rails.application.routes.draw do
  devise_for :users
  resources :appointments
  resources :exercises
  resources :bodyareas
  resources :typesofexercises

  root "static_pages#home"
end
