Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  devise_for :artists, controllers: {
    sessions:      'artists/sessions',
    passwords:     'artists/passwords',
    registrations: 'artists/registrations'
  }
  root to: "top#index"
  get "/explanation" => "top#explanation"
  resources :questions, param: :title, path: "/questions", only: [:show, :new, :create]
  resources :artists, param: :first_name, path: "artists", only: [ :index, :show]
end
