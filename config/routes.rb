Routesintro::Application.routes.draw do
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







#LETS LEARN SOME ROUTES!!!!

# from within your app directory, type 'rake routes', 
# or while your app is running, type the following into your browser: 
# http://localhost:3000/rails/info/routes

#these are called named routes

#root 'cats#home'

#get 'cats' => 'cats#index'

#notice the change in the prefix for the url helpers when you run rake routes here! this works with resource declarations as well
#new_dog_url() instead of new_cat_url()
#get 'cats' => 'cats#index', as: 'dogs'


#look at how many routes we have to declare if we do it one by one! 
#Notice that we can cheat and use the http verbs to our advantage when naming!
#the :id is passed to a hash called params, which we can access from our controllers

=begin
get 'cats' => 'cats#index'
post 'cats' => 'cats#create'
get 'cats/new' => 'cats#new'
get 'cats/:id/edit' => 'cats#edit'
get 'cats/:id' => 'cats#show'
patch 'cats/:id' => 'cats#update'
put 'cats/:id' => 'cats#update'
delete 'cats/:id' => 'cats#destroy'
=end







#resource routes (the RESTful way of doing it!)

#resources :cats

#resources :cats, as: 'dogs'

#except can be subsituted with only
#resources :cats, except: :destroy

#resources :cats, except: [:destroy, :index, :show, :create]

#singular resource, notice no index action and route url is singular
#resource :cat

#nested resources

#notice how the naming works, also notice we can nest resources within resources within resources, although its not a great practice!
=begin

resources :cats do
  resources :ears

  #resources :paws do
  #    resources :claws
  #end
end

=end

#namespaces

#namespace :admin do
#  resources :cats
#end

end
