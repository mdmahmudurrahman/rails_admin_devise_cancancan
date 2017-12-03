Rails.application.routes.draw do
  # authenticate :admin do
  #   mount RailsAdmin::Engine => 'admin', as: :rails_admin
  # end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :employees
  root "static_pages#home"

  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  resources :employees
  resources :projects
  resources :departments
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
