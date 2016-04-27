Rails.application.routes.draw do
  root "items#index"
  resources :tags
    resources :items do
      require "carrierwave"
        get "closet", on: :collection
        get "wishlist", on: :collection
        put "add_to_wishlist", on: :member
        put "add_to_closet", on: :member
      resources :notes
      resources :taggings, only: [:new, :create]
    end
end
