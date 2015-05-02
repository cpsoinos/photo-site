Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :categories do
    resources :photos, only: [
      :index,
      :destroy
    ]
  end

end
