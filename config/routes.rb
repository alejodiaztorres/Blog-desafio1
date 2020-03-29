Rails.application.routes.draw do
  get 'blog/index'
  get 'blog/dashboard'
  get 'blog/create'
  root 'blog#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
