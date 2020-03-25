Rails.application.routes.draw do
  resources :journals
  namespace :api do
    namespace :v1 do
      resources :journal_entries
    end
  end

  root to: "home#index"
end
