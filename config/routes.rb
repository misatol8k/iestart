Rails.application.routes.draw do
  root 'properties#new'
  resources :properties do
    member do
      get 'ranking'
    end
  resources :consultation_details
  end

  get 'consultation_matters/index'
  get 'consultation_matters/new'
  get 'consultation_matters/show'

  resources :customers
  resources :specialists
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
