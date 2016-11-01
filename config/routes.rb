Rails.application.routes.draw do
  root 'pins#index'
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :pins do
    member do
      put "like", to: "pins#upvote"
    end
  end

end
