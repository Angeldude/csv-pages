Rails.application.routes.draw do
  root 'pages#index'

  post '/upload', to: 'pages#upload'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
