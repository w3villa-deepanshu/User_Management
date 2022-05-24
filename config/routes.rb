Rails.application.routes.draw do
  root "users#index"
  resources :projects
  resources :users do
    resources :managements
  end  
end
