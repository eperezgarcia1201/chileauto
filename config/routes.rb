Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :users do 
  	resources :companies, only: [:new, :create,  :edit, :update, :show] 
  		resources :parts
  end
get 'companies', to: 'companies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
