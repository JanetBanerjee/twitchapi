Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'auth/:provider/callback', to: 'posts#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'posts#destroy', as: 'signout'

  resources :posts
  root to: 'static#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
