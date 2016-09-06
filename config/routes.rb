Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contato
  resources :home
  resources :sobre
  resources :relatorio
  resources :log
  resources :registrationlog
end
