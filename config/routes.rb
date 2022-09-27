Rails.application.routes.draw do
  resources :users, only: [:show] do
    # nested resource for items
    resources :items, only: %i[index create show]
  end
  resources :items, only: %i[index create show]
end
