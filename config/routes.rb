Rails.application.routes.draw do
  root 'top_pages#home'
  get '/help', to: 'top_pages#help'
end
