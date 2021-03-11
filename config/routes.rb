Rails.application.routes.draw do

  # devise_for :views
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'shopping_carts/:id' => "shopping_carts#show", as: "shopping_cart"
  delete 'shopping_carts/:id' => "shopping_carts#destroy"
  
  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"
  post 'line_items' => "line_items#create"
  
  resources :songs
  resources :orders

  resources :chatrooms, only: [:show, :new, :create  ] do
    resources :messages, only: :create
  end

  resource :dashboard, only: [:show]
end
