Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :users
  get 'join_team/:id', to: 'users#join_team', as: 'join_team'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
  resources :teams, :departments, :challenges

  get 'search_teams', to: 'teams#search'
end
