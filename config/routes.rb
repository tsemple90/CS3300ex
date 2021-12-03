Rails.application.routes.draw do
  devise_for :user
  # root "projects#index"
  root to: 'projects#index'
  resources :projects

end