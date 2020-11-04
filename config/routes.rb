Rails.application.routes.draw do

  root to: 'homes#top'

  get 'kanri' => "homes#kanri"

  get 'kanri/new' => "homes#new"

  get 'kanri/forms' => "forms#index"

  resources :news, only: [:create, :edit, :update, :destroy]
  resources :partners, only: [:create, :edit, :update, :destroy]
  # resources :forms
  resources :forms, only: [:create, :index, :update]
  # resources :update_visible

end
