Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :classroom, only: :show do
    resource :students, only: %i[new create index]
    resource :missions, only: %i[new create index]
  end
end
