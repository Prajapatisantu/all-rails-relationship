Rails.application.routes.draw do
  root 'employees#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :articles
  resources :companies
  resources :employees do
    resources :comments
  end
  resources :projects do
    resources :comments
  end
end
