Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get '/home/about' => 'homes#about', as: 'about'
  resources :users, only: [:show, :edit, :update, :index]
  resources :books, only: [:create, :edit, :update, :index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
