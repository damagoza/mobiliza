Rails.application.routes.draw do

  resources :travels
  resources :demand_travels
  resources :offer_travels

  namespace :api do
    post 'travel/create'
    post 'travel/show'
    get  'travel/all'
  end  

  namespace :api do
    post 'demand_travel/for_user'        
    post 'demand_travel/create'
    post 'demand_travel/show'
    get  'demand_travel/all'
  end  


  namespace :api do
    post 'offer_travel/for_user'        
    post 'offer_travel/travel_for_state'    
    post 'offer_travel/create'
    post 'offer_travel/show'
    get  'offer_travel/all'
  end  
  
  namespace :api do
    post 'vechicle/vechicle_for_user'
    post 'vechicle/create'
    post 'vechicle/show'
    get 'vechicle/all'
  end

  namespace :api do
    post 'type_vehicle/create'    
    post 'type_vehicle/show'
    get 'type_vehicle/all'
  end

  namespace :api do
    get  'user/all'
    post 'user/sign_in'
    post 'user/sign_up'
    post 'user/show'
    get  'user/all'    
  end

  resources :vechicles
  resources :vechicles
  resources :vechicles
  resources :type_vehicles
  devise_for :users
  get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
