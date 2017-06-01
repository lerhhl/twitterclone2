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
end
