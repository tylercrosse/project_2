Rails.application.routes.draw do
root "items#index"
resources :items do
  get "closet", on: :collection
  get "wishlist", on: :collection
  put "add_to_wishlist", on: :member
  put "add_to_closet", on: :member
  resources :notes
end
end
