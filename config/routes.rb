Rails.application.routes.draw do
  root 'properties#index'
  resources :properties
  get 'consultation_matters/index'
  get 'consultation_matters/new'
  get 'consultation_matters/show'
  get 'customers/index'
  get 'customers/new'
  get 'customers/show'
  get 'specialists/index'
  get 'specialists/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
