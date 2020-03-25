Rails.application.routes.draw do
  resources :journals
  namespace :api do
    namespace :v1 do
      resources :journal_entries
      resources :journals
      resources :log_spreads
      resources :tasks
    end
  end

  root to: "home#index"

  post "refresh", controller: :refresh, action: :create
  post "signin", controller: :signin, action: :create
  post "signup", controller: :signup, action: :create
  delete "signin", controller: :signin, action: :destroy

end
