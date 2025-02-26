Rails.application.routes.draw do
  # Root route (optional, but recommended)
  root "places#index"

  # Routes for places
  resources :places do
    # Nested routes for entries (entries belong to a place)
    resources :entries, only: [:new, :create]
  end
end
