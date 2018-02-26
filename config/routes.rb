Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'calculateTotalDuration', to: 'todos#CalculateTotalDuration'
  resources :todos do
      resources :items
  end
end
