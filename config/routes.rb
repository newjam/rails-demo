Rails.application.routes.draw do
  resources :cats
#  get '/cats', to: 'cats#index'
#  get '/cats/:id', to: 'cats#show'

  root to: redirect('cats')
end
