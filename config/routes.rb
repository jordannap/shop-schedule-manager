Rails.application.routes.draw do
  resources :shop_schedules

  devise_for :admins, controllers: {
      sessions: 'admins/sessions',
	    registrations: 'admins/registrations'
  }
  root "shops#index"

  resources :shops

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
