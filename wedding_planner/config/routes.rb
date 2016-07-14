Rails.application.routes.draw do

  root to: "welcome#index"
  resources :guests do
    resources :place_cards
  end
  resources :users
  resource  :session
end
