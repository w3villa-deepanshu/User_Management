Rails.application.routes.draw do
  devise_for :admins
  resources :projects
root "users#index"
  resources :users do
    resources :managements
  end  
end
