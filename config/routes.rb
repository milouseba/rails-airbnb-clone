Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :articles do
    resources :reviews, only: [:index]
    resources :orders, only: [:create]
  end

  get "/orderssell", to: "orders#order_sell", as: "orders_sell"

  patch "/orderssell/:id", to: "orders#orders_sell_confirmed" , as: "orders_sell_confirmed"

  get "/ordersbuy", to: "orders#order_buy", as: "orders_buy"


  resources :orders, only: [:orders_sell_confirmed]


  resources :orders do
    resources :reviews, only: [ :new, :create ]
  end

end
