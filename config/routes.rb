Urbansuite::Application.routes.draw do
  resources :type_rooms

  resources :contacts

  resources :reservations
  
  resources :home do
    member do
      post :reserva
      post :contact
    end
  end
  
  get "home/index"
  get "home/servicios"
  get "home/ubicacion"
  get "home/reservas"
  get "home/contacto"
  get "home/departamentos"  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action
  
  
  root :to => "home#index"
  
  match ":locale" => "home#index", :as => :index
  #match "/" => "home#index", :as => :index
  match "/servicios/" => "home#servicios", :as => :servicios
  match "/servicios/:locale" => "home#servicios", :as => :servicios
  match "/ubicacion/" => "home#ubicacion", :as => :ubicacion
  match "/ubicacion/:locale" => "home#ubicacion", :as => :ubicacion
  match "/reservas/" => "home#reservas", :as => :reservas
  match "/reservas/:locale" => "home#reservas", :as => :reservas
  match "/contacto/" => "home#contacto", :as => :contacto
  match "/contacto/:locale" => "home#contacto", :as => :contacto
  match "/departamentos/" => "home#departamentos", :as => :departamentos
  match "/departamentos/:locale" => "home#departamentos", :as => :departamentos

  match "reserva/:locale" => "home#reserva", :as => "reserva"
  match "contact/:locale" => "home#contact", :as => "contact"   

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
