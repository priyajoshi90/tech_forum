Techforum::Application.routes.draw do

  devise_for :emp_logins, :controllers => {:registrations => 'registration'} do
	resources :emp_masters 
  # get '/emp_logins/:id/edit', to: 'registration#edit', as: 'edit_emp_login_registration'
  # get 'emp_logins/show' => 'registrations#show'
  # get '/emp_logins/show', to: 'registration#show', as: 'show_emp_login_registration'
  resources :wfh
  resources :leaves    
  end

  devise_scope :emp_login do
    get '/emp_logins/show' => 'registration#show'
    get '/emp_logins/wfh' => 'wfh#new'
    post '/emp_logins/wfh' => 'wfh#create'
    get '/emp_logins/leave' => 'leave#new'
    post '/emp_logins/leave' => 'leave#create'
    get '/emp_logins/view', to: 'registration#view', as: 'view_emp_login_registration' 
    put '/emp_logins', to: 'registration#update', as: 'update_emp_login_registration'
    # get '/wfhs'
  end
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
