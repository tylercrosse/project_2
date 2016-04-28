Rails.application.routes.draw do
  root "items#index"
  resources :tags, only: [:show]
    resources :items do
      require "carrierwave"
        get "closet", on: :collection
        get "wishlist", on: :collection
        put "add_to_wishlist", on: :member
        put "add_to_closet", on: :member
      resources :notes
      resources :taggings, only: [:new, :create, :destroy]
    end
end
