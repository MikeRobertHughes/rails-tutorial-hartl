Rails.application.routes.draw do

  get 'users/new'

  get '/help',     to: 'static_pages#help',    as: 'help'
  get '/about',    to: 'static_pages#about',   as: 'about'
  get '/contact',  to: 'static_pages#contact', as: 'contact'
  get '/signup',   to: 'users#new',            as: 'signup'
  resources :users
  root 'static_pages#home'
end
