Rails.application.routes.draw do
  devise_for :student
  # root "projects#index"
  root to: 'projects#index'
  resources :projects

end