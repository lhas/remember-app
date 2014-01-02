RememberApp::Application.routes.draw do
  root 'pages#index'
  
  devise_for :users
  
  get 'contact', to: 'pages#contact', as: 'contact'

  post 'insights/create', to: 'insights#create', as: 'create_insight'
end
