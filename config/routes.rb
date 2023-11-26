Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
    get 'login', to: 'devise/sessions#new'
    get 'users/sign_out', to: 'devise/sessions#destroy' # define the route matches [GET] "/users/sign_out
  end
  root "pages#index"
end
