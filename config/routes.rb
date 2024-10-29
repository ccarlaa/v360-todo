Rails.application.routes.draw do
  root 'lists#index'

  resources :lists do
    get '/search' => 'lists#search', as: :search

    resources :items do
      post :toggle_done, on: :member
    end

  end
  

  # Lookbook
  mount Lookbook::Engine, at: "/lookbook" if defined?(Lookbook)
end
