Cobra::Application.routes.draw do
  root :to => 'contacts#new'
  get 'contacts/stats'
  resources :users, :user_sessions, :contacts, :topics
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
end
