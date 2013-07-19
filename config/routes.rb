Omrails::Application.routes.draw do
  root :to => 'pages#home'
  get 'about' => 'pages#about'
  get 'faq' => 'pages#faq'
end
