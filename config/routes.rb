Rails.application.routes.draw do
  resources :products
  get 'simple_pages/about'
  get 'simple_pages/contact'
  post 'simple_pages/thank_you'
  get 'simple_pages/index'
  root 'simple_pages#landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :orders, only: [:index, :show, :create, :destroy]
end
