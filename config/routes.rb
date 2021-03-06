Rails.application.routes.draw do
  devise_for :owners,
             path: '',
             path_names: { sign_in: 'login', sign_out: 'logout', registration: 'signup' },
             controllers: { sessions: 'sessions', registrations: 'registrations' }

  resources :tickets, only: %i[create update]
  get 'risk-feed', to: 'tickets#risk_feed'

  resources :companies, only: %i[index create update show] do
    resources :areas, only: %i[index create update show], shallow: true
  end
  resource :owner, only: :update
end
