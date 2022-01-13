Rails.application.routes.draw do
  get 'consultation_matters/index'
  get 'consultation_matters/new'
  get 'consultation_matters/show'
  root 'properties#index'
  resources :properties
  get 'customers/index'
  get 'customers/new'
  get 'customers/show'
  get 'specialists/index'
  get 'specialists/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
