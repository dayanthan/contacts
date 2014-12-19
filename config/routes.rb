Network::Application.routes.draw do
  resources :contacts do
  member do
    get :preview
  end
  collection do
    get :profile
  end
  end
  resources :users
  match 'users_destroy' => 'users#destroy'
  match 'users_show' => 'users#show'
  match 'login_new' => 'users#login_new'
  match 'users_login' => 'users#login'
  match 'logout'    => 'users#logout'



  get "/contacts/facebook/callback" => "contacts#facebook_contact_list"
  get "/contacts/gmail/callback" => "contacts#contact_list" 
  get "/contacts/failure" => "contacts#contact_fail"
  match "fb_invite"=>"contacts#fb_invite"
  match '/add_contact_success' => 'contacts#add_contact_success' 
  match '/facebook_contact_success' => 'contacts#facebook_contact_success' 
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'users#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
