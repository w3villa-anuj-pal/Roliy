Rails.application.routes.draw do
  resources :courses
  devise_for :users
  root 'welcome#home'
  get 'enroll_course/create' , to: "enroll_course#create" , as: :enroll_course
  get 'enroll_course/index'
end
