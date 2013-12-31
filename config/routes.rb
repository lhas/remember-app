RememberApp::Application.routes.draw do
  root 'welcome#index'

  get 'contact', to: 'welcome#contact', as: 'contact'
end
