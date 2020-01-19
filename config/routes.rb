Rails.application.routes.draw do
  root 'top_pages#home'
  get '/help', to: 'top_pages#help'
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions',
      passwords: 'users/passwords'
  }
  devise_scope :user do
    get '/users/:id', to: 'users#show', as: :user
  end
  resources :users, only: [:show] do
    resources :personal_achievement_tests, only: [:new, :show, :create, :destroy, :index]
  end
end
