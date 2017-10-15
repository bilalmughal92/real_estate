Rails.application.routes.draw do
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    root to: "welcome#index"

    post "login" => "users#login"
    post "signup" => "users#signup"
    get "signout" => "users#sign_out"
    resources :records
  end
  root to: "welcome#index"
  post "login" => "users#login"
  post "signup" => "users#signup"
  get "signout" => "users#sign_out"
  get "contact_us" => "welcome#contact_us"
  get "about_us" => "welcome#about_us"
  resources :clients
  resources :properties do
    collection do
      post 'search'
    end
  end
  resources :orders do
    member do
      get 'place_order'
    end
  end
end
