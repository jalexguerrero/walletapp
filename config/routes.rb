Rails.application.routes.draw do
  resources :incomes
  resources :wallets do
    collection do
      get '/:id/in', to: 'incomes#new', as: :new_income
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
