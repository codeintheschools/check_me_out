Rails.application.routes.draw do
  root 'welcome#index'
  resources :check_outs do
    member do
      post :complete
    end
  end
  resources :things
end
