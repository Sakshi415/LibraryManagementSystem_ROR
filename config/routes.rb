Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :users do
    collection do
      get :test
    end
  end
  resources :libs do
    collection do
      get :fetch_data
      get :display
    end
  resources :books 
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
