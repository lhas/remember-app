RememberApp::Application.routes.draw do
  root 'pages#index'
  
  devise_for :users
  
  get 'contact', to: 'pages#contact', as: 'contact'

  resources 'insights'
end
