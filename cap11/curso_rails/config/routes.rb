Rails.application.routes.draw do
  get 'errors/route'

  get 'home/index'

  get 'home/quienes_somos'

  get 'home/contacto'

  get 'home/localizacion'

  get 'home/servicios'
  
  # Using match
  match "servicios" => "home#servicios", :via => [:get, :post]
  # Custom route name
  match 'quienes' => 'home#quienes_somos', :as => 'quien', :via => :get
  # Super match
  #match ':controller(/:action(/:id))(.:format)', :via => :get
  
  # With parameter
  match 'servicios/:id' => 'home#servicios', :via => [:post, :get]
  # Redirecting
  match 'servs/:id' => redirect('servicios/%{id}'), :via => [:post, :get]
  # Special redirecting
  match 'servnom/:nombre' => redirect { |params| "servicios/#{params[:nombre].capitalize}" }, :via => [:post, :get]
  # Parameters constrains
  match 'contact/:id' => 'home#contacto', :constraints => { :id => /\d{1,3}/ }, :via => :get
  # Class constraint DOESN'T WORD!!!
  #match 'logged' => 'home#index', :constraints => LoggedUser, :via => :get
  
  # Bad routes to index
  #match '*a' => 'home#index', :via => [:get, :post, :update, :delete]
  # Bad routes to erroes
  match '*a' => 'errors#route', :via => :all

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
