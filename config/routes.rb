Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users do
    resource :userpic do
      member do
        patch :set_as_primary
      end
    end
  end

  resources :tweets

  root 'pages#home'
  get '/show', to: 'pages#show', as: "show"
end
