Rails.application.routes.draw do
  resources :assignments
  resources :students
  resources :grades
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
