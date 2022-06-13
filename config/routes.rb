Rails.application.routes.draw do
  devise_for :users
  root to: 'classrooms#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :missions, only: %i[edit update destroy] do
    resources :mission_setups, only: [:create]
  end

  resources :classroom, only: [ :show ] do
    resources :students, only: %i[index]
    resources :missions, only: %i[new create index]
  end
  resources :students, only: %i[show new create]
  resources :rewards, only: %i[index show new create destroy] do
    resources :reward_setups, only: [:create]
  end
end
