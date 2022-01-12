Rails.application.routes.draw do
  get 'properties/index'
  get 'properties/new'
  get 'properties/show'
  root 'property#index'
  get 'property/index'
  get 'property/new'
  get 'property/show'
  get 'customers/index'
  get 'customers/new'
  get 'customers/show'
  get 'specialists/index'
  get 'specialists/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
