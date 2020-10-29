Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'publishers/:id/games', to: 'publishers#games'

  resources :games do
    resources :developers
  end

  resources :publishers


end
