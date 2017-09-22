Rails.application.routes.draw do
  get 'bookings/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'flights#index'
  get 'flights/index'

  resources :bookings
  resources :passengers
  
end
