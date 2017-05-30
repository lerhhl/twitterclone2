Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users do
    resources :tweets
  end

  root 'static_pages#home'

end
