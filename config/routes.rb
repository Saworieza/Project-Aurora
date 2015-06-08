Rails.application.routes.draw do
  resources :classrooms
  resources :events
  resources :disciplines
  resources :tasks
  resources :pay_others
  resources :pay_fees
  resources :students
  resources :teachers
  get 'home/index'
  root 'home#index'

end
