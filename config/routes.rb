Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'en', to: 'en/pages#home'
  get 'fiesta', to: 'responses#new', as: :fiesta
  get 'en/fiesta', to: 'en/responses#new'
  post 'responses', to: 'responses#create'
  post 'en/responses', to: 'en/responses#create'
  post 'subscriptions', to: 'subscriptions#create'
  post 'en/subscriptions', to: 'en/subscriptions#create'
end
