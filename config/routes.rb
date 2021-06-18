Rails.application.routes.draw do
  root to: 'fibonacci_numbers#new'
  resources :fibonacci_numbers, only: %w[new create]
end
