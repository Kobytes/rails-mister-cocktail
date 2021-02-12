Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: %i[destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
