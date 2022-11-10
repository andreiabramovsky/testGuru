Rails.application.routes.draw do
  get '/about', to: 'abouts#index'
  get '/about/author', to: 'abouts#author'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
