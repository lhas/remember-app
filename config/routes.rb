RememberApp::Application.routes.draw do
  root 'welcome#index'
  
  devise_for :users
  
  get 'contact', to: 'welcome#contact', as: 'contact'

  resources 'insights'
end
