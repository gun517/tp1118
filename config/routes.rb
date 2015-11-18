Rails.application.routes.draw do
  
  devise_for :users
  root "timeline#index"
  get '/fox' => 'timeline#fox'
  get '/wolf' => 'timeline#wolf'
  post '/write' => 'timeline#write'
  post '/comment' => 'timeline#comment'
  get '/blog_edit' => 'timeline#blog_edit'
  get '/comment_edit' => 'timeline#comment_edit'
  get '/blog_delete' => 'timeline#blog_delete'
  get '/comment_delete' => 'timeline#comment_delete'
  post '/blog_update'=> 'timeline#blog_update'
  post '/comment_update' => 'timeline#comment_update'
  get '/myblog' => 'timeline#myblog'
  get '/mycomment' => 'timeline#mycomment'
  post '/agree' => 'timeline#agree'
  post '/agreec' => 'timeline#agreec'
  get '/blog' => 'timeline#blog'
  
  #get '/blog/edit' => 'blog#edit'
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
