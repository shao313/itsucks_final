Rails.application.routes.draw do
  # Routes for the Caption resource:
  # CREATE
  get "/captions/new", :controller => "captions", :action => "new"
  post "/create_caption", :controller => "captions", :action => "create"

  # READ
  get "/captions", :controller => "captions", :action => "index"
  get "/captions/:id", :controller => "captions", :action => "show"

  # UPDATE
  get "/captions/:id/edit", :controller => "captions", :action => "edit"
  post "/update_caption/:id", :controller => "captions", :action => "update"

  # DELETE
  get "/delete_caption/:id", :controller => "captions", :action => "destroy"
  #------------------------------

  # Routes for the Suck resource:
  # CREATE
  get "/sucks/new", :controller => "sucks", :action => "new"
  post "/create_suck", :controller => "sucks", :action => "create"

  # READ
  get "/sucks", :controller => "sucks", :action => "index"
  get "/sucks/:id", :controller => "sucks", :action => "show"

  # UPDATE
  get "/sucks/:id/edit", :controller => "sucks", :action => "edit"
  post "/update_suck/:id", :controller => "sucks", :action => "update"

  # DELETE
  get "/delete_suck/:id", :controller => "sucks", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Complaint resource:
  # CREATE
  get "/complaints/new", :controller => "complaints", :action => "new"
  post "/create_complaint", :controller => "complaints", :action => "create"

  # READ
  get "/complaints", :controller => "complaints", :action => "index"
  get "/complaints/:id", :controller => "complaints", :action => "show"

  # UPDATE
  get "/complaints/:id/edit", :controller => "complaints", :action => "edit"
  post "/update_complaint/:id", :controller => "complaints", :action => "update"

  # DELETE
  get "/delete_complaint/:id", :controller => "complaints", :action => "destroy"
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get "/companies/new", :controller => "companies", :action => "new"
  post "/create_company", :controller => "companies", :action => "create"

  # READ
  get "/companies", :controller => "companies", :action => "index"
  get "/companies/:id", :controller => "companies", :action => "show"

  # UPDATE
  get "/companies/:id/edit", :controller => "companies", :action => "edit"
  post "/update_company/:id", :controller => "companies", :action => "update"

  # DELETE
  get "/delete_company/:id", :controller => "companies", :action => "destroy"
  #------------------------------

  devise_for :users
  root "complaints#index"

  get "/my_blacklists", :controller => "complaints", :action => "my_blacklists"
  get "/sucked_companies", :controller => "complaints", :action => "sucked_companies"

  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"
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
end
