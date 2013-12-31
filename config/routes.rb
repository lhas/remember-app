RememberApp::Application.routes.draw do
  devise_for :users
  root 'welcome#index'

  get 'contact', to: 'welcome#contact', as: 'contact'
end
