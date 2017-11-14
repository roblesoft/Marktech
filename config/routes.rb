Rails.application.routes.draw do
  devise_for :users
  get 'recistencias/index'

  get "inicio", to: "welcome#index"
  
  get 'welcome/protos'
  get 'welcome/fuentes'
  get 'welcome/arduinos'

  resources :products
  

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
