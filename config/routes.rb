Rails.application.routes.draw do
  resources :classrooms
  resources :events
  resources :disciplines
  resources :tasks
  resources :pay_others
  resources :pay_fees
  resources :students do
    collection { post :import }
  end
  resources :teachers do
    collection { post :import }
  end
  
  get 'home/index'
  root 'home#index'

end
