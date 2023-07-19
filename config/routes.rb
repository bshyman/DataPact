DataPact::Engine.routes.draw do
  get 'index', to: 'application#index'
  root to: 'application#index'

end
