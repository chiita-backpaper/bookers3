Rails.application.routes.draw do
  root to: "homes#home"
  # get 'users/index'
  get 'home' => 'homes#home'
  get 'home/about' => "homes#about"
  devise_for :users
  # root to: "books#index"
  resources :books do
    resource :favorites, only: [:create, :destroy]
  end

  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end