Rails.application.routes.draw do
  # Root route (landing page)
  root "places#index"

  # Routes for places
  resources :places, only: [:index, :show, :new, :create] do
    # Routes for entries (nested under places)
    resources :entries, only: [:new, :create]
  end
end
