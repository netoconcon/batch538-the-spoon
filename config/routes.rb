Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # LISTAR TODOS RESTAURANTES
  get "restaurants", to: "restaurants#index"

  # MOSTRAR UM FORM PARA O USER CRIAR UM RESTAURANT
  get "restaurants/new", to: "restaurants#new"

  # MOSTRAR UM RESTAURANTE
  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # CRIAR O RESTAURANTE NO DB
  post "restaurants", to: "restaurants#create"

  # MOSTRAR UM FORM PRO USER EDITAR O RESTAURANT
  get "restaurants/:id/edit", to: "restaurants#edit", as: :edit

  # ATUALIZAR O RESTAURANTE NO DB
  patch "restaurants/:id", to: "restaurants#update"

  # DELETAR UM RESTAURANTE
  delete "restaurants/:id", to: "restaurants#destroy", as: :delete

  # resources :restaurants
  # resources :restaurants, except: [:edit, :update]
  # resources :restaurants, only: [:index, :show]
end
