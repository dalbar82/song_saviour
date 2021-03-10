Rails.application.routes.draw do
  # get 'user/index'
  # get 'user/create'
  # get 'user/new'
  # get 'user/show'
  # get 'user/edit'
  # get 'user/update'
  # get 'user/destroy'
  # get 'order/index'
  # get 'order/create'
  # get 'order/new'
  # get 'order/show'
  # get 'order/edit'
  # get 'order/update'
  # get 'order/destroy'
  # get 'shopping_cart/index'
  # get 'shopping_cart/create'
  # get 'shopping_cart/new'
  # get 'shopping_cart/show'
  # get 'shopping_cart/edit'
  # get 'shopping_cart/update'
  # get 'shopping_cart/destroy'
  # get 'line_item/index'
  # get 'line_item/create'
  # get 'line_item/new'
  # get 'line_item/show'
  # get 'line_item/edit'
  # get 'line_item/update'
  # get 'line_item/destroy'
  # get 'song/index'
  # get 'song/create'
  # get 'song/new'
  # get 'song/show'
  # get 'song/edit'
  # get 'song/update'
  # get 'song/destroy'
  # get 'genre/create'
  # get 'genre/new'
  # get 'genre/show'
  devise_for :views
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

end
