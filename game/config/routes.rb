Rails.application.routes.draw do
  devise_for :users

  resources :users
  resources :platforms

    resources :vgames do
      resources :reviews, :shallow => true
      resources :guides, :shallow => true
      resources :vgame_platforms, :shallow => true
      resources :topics, :shallow => true do
        resources :posts, :shallow => true
      end
    end

    root 'vgames#index'
  end
