Rails.application.routes.draw do

  resources :posts

  get 'staticpages/home', to: 'static_pages#home'
  get 'staticpages/help', to: 'static_pages#help'
  get 'tp/demo1', to: 'template_party#demo1'
  root to: 'demo#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
