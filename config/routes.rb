Rails.application.routes.draw do
  root to: 'asks#index'

  resources :asks do
    resources :questions
  end
  resources :responses
end
