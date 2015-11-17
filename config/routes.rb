Rails.application.routes.draw do
  get 'cheerups/index'

  devise_for :users
  root to: "cheerups#index"

end
