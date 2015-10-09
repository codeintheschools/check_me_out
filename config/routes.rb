Rails.application.routes.draw do
  root 'welcome#index'
  resources :check_outs
  resources :things
end
