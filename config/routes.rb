Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :games, only: [:create, :show] do
    post :new_ball
  end
  
  root 'root#apis'
end
