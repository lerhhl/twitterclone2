Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users do
    resources :tweets
    resource :userpic do
      member do
        patch :set_as_primary
      end
    end
  end

  root 'pages#home'
  get '/show', to: 'pages#show'
  get '/users/:user_id/tweets', to: 'pages#show', as: 'tweets'
end
