Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
    resources :to_dos
    resources :journal_entries
    end
  end

  root to: "home#index"
end
