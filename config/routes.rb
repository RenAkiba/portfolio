Rails.application.routes.draw do
  devise_for :endusers
  root "users#index"
  resources :users #resources :コントローラー名
end
