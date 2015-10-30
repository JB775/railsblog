Rails.application.routes.draw do

  
  #post 'search', to: 'users#search'

  get 'posts/index', to: 'posts#index'


  post 'createcomment', to: 'comments#create', as: 'create_comment'
  post 'anothercomment', to: 'comments#anothercomment', as: 'another_comment'

  
  get 'posts/new', to: 'posts#new', as: 'posts'
  post 'posts/new', to: 'posts#create'
  #get 'posts/show', to: 'posts#show'


  get 'posts/:id', to: 'posts#show', as: 'post'
  #post 'posts/:id', to: 'posts#search'
  get 'posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  put 'posts/:id', to: 'posts#update'
  patch 'posts/:id', to: 'posts#update'
  delete 'posts/:id', to: 'posts#delete'


  root 'home#homepage'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'destroy_session'
 
  get 'allusers', to: 'users#index'
  get 'new', to: 'users#new'
  post 'users', to: 'users#create'
  get 'users/:id', to: 'users#show', as: 'user'
  post 'users/:id', to: 'users#search'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  get 'users/contact'
  put 'users/:id', to: 'users#update'
  patch 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#delete'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
