Rails.application.routes.draw do

  devise_for :users
  root to: "cheerups#index"

    resources :cheerups, only:[:index, :edit, :show, :new, :destroy]

end
