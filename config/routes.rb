Rails.application.routes.draw do
  root "flights#index"

  resources :bookings, only: [:new]
end
