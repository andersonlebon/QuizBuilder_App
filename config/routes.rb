Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :quiz_assessments do
    resources :questions do
      resources :answers
    end
  end
  # Defines the root path route ("/")
  root "home#index"
end
