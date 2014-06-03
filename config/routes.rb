Final::Application.routes.draw do
  
  # Specify a custom home page
  get "/" => "chocolate#index"


  # Sign-In and Sign-Out

  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'

  # Resource: Reviews

  # --- Create
  get "/reviews/new" => 'reviews#new'
  post "/reviews" => 'reviews#create'

  # --- Read
  get "/reviews" => 'reviews#index'
  get "/reviews/:id" => 'reviews#show'

  # -- Update
  get "/reviews/:id/edit" => 'reviews#edit'
  patch "/reviews/:id" => 'reviews#update'

  # --- Delete
  delete "/reviews/:id" => 'reviews#destroy'



  # Resource: Users

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'

  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # --- Delete
  delete "/users/:id" => 'users#destroy'



  # Resource: Chocolates

  # --- Create
  get "/chocolate/new" => 'chocolate#new'
  post "/chocolate" => 'chocolate#create'

  # --- Read
  get "/chocolate" => 'chocolate#index'
  get "/chocolate/:id" => 'chocolate#show'

  # -- Update
  get "/chocolate/:id/edit" => 'chocolate#edit'
  patch "/chocolate/:id" => 'chocolate#update'

  # --- Delete
  delete "/chocolate/:id" => 'chocolate#destroy'



  # Resource: Chocolatiers

  # --- Create
  get "/chocolatier/new" => 'chocolatier#new'
  post "/chocolatier" => 'chocolatier#create'

  # --- Read
  get "/chocolatier" => 'chocolatier#index'
  get "/chocolatier/:id" => 'chocolatier#show'

  # -- Update
  get "/chocolatier/:id/edit" => 'chocolatier#edit'
  patch "/chocolatier/:id" => 'chocolatier#update'

  # --- Delete
  delete "/chocolatier/:id" => 'chocolatier#destroy'


end
  
  
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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