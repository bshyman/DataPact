DataPact::Engine.routes.draw do
  get 'index', to: 'application#index'
  resources :session_data, only: [:index, :create] do
    delete :destroy, on: :collection
  end
  get 'routes', to: 'application#routes'
  get 'settings', to: 'application#settings'
  get 'jobs', to: 'application#jobs'
  root to: 'application#index'

end
