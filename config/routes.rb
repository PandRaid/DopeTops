  Rails.application.routes.draw do
  devise_for :views
  get 'gallery/show'

  get 'static_pages/about'

  get 'static_pages/faq'

  get 'welcome/index'

  devise_for :users, :controllers => {registrations: 'registrations', sessions: 'sessions'}


  match 'remote_sign_up', to: 'remote_content#remote_sign_up', via: [:get]

  match 'remote_sign_in', to: 'remote_content#remote_sign_in', via: [:get]


  match 'user_page', to: 'user_page#user_home', via: [:get]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

 match '/contacts',     to: 'contacts#new',             via: 'get'
 resources "contacts", only: [:new, :create]
  match '/gallery',     to: 'gallery#show',             via: 'get'
 resources "gallery", only: [:show, :create]

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
