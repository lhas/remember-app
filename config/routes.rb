RememberApp::Application.routes.draw do
  # Root
  root 'pages#index'
  
  # Devise
  devise_for :users
  
  # Contact Page
  get 'contact', to: 'pages#contact', as: 'contact'

  # Insights
  post 'insights/create', to: 'insights#create', as: 'create_insight'
  get 'insights/edit/:id', to: 'insights#edit', as: 'edit_insight'
  patch 'insights/update/:id', to: 'insights#update', as: 'update_insight'
  get 'insights/destroy/:id', to: 'insights#destroy', as: 'destroy_insight'
end
