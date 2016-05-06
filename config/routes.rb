Rails.application.routes.draw do
  root "items#index"

  resources :outfits, except: [:edit, :update] do
    member do
      post 'add_item'
      post 'remove_item'
    end
  end

  resources :tags, only: [:show]
    # the next block doesn't need to be indented
    resources :items do
      require "carrierwave"
        # nice use of custom routes
        get "closet", on: :collection
        get "wishlist", on: :collection
        get "archive", on: :collection
        put "add_to_wishlist", on: :member
        put "add_to_closet", on: :member
        put "add_to_archive", on: :member
      resources :notes
      resources :taggings, only: [:new, :create, :destroy]
    end
end
