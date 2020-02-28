Rails.application.routes.draw do
  root to: "cocktails#index"
  get 'search', to: 'cocktails#search'
  resources :cocktails do
    resources :doses
  end
end
