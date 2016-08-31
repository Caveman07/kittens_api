Rails.application.routes.draw do
  #home
  root :to => "kittens#index"

  resources :kittens

end
