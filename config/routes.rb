Rails.application.routes.draw do
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"

  post "login" => "users#login"
  post "signup" => "users#signup"
  get "signout" => "users#sign_out"
  get "contact_us" => "welcome#contact_us"
  get "about_us" => "welcome#about_us"

  resources :records
  resources :clients

end
