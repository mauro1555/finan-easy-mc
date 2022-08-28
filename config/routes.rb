Rails.application.routes.draw do
  resources :empleados
  resources :proveedors
  resources :clientes
  resources :egresos
  resources :ingresos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
