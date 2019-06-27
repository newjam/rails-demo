Rails.application.routes.draw do
  resources :cats
  root to: redirect('cats')
end
