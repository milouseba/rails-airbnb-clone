Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'



  resources :articles do
    resources :reviews, only: [:index]
    resources :orders, only: [:create]  do
      resources :reviews, only: [ :new, :create ]
    end
  end

  get "/orderssell", to: "orders#order_sell", as: "orders_sell"
  get "/ordersbuy", to: "orders#order_buy", as: "orders_buy"

end
