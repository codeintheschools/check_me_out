Rails.application.routes.draw do
  get 'check_outs/create'

  get 'check_outs/destroy'

  root 'welcome#index'
  resources :check_outs
end
