Rails.application.routes.draw do
  get 'clock_events/index'

  resources :clock_events

  root 'clock_events#index'
end
