Omrails::Application.routes.draw do
  get "users/show"

  resources :listings


  devise_for :users
  match 'users/:id' => 'users#show', as: :user

  root :to => 'pages#home'
  get 'about' => 'pages#about'
  get 'faq' => 'pages#faq'
end
