Community::Application.routes.draw do
  root :to => 'main#home'

  resources :authentications
  delete 'authentications', to: 'authentications#destroy'
  resources :registrations

  resources :users
  resources :cars
  resources :phones
  resources :services
  resources :brands

  
  #resources :users do
  #  resources :cars
  #end


#, :only => [:index, :create, :show]
#    GET          /posts  index   display a list of all posts
#    GET          /posts/new  new   return an HTML form for creating a new post
#    POST         /posts  create  create a new post
#    GET          /posts/:id  show  display a specific post
#    GET          /posts/:id/edit   edit  return an HTML form for editing a post
#    PATCH/PUT    /posts/:id  update  update a specific post
#    DELETE       /posts/:id  destroy   delete a specific post
  #resources :user

  #resources :brands
  #resources :cars
  #resources :orders
  #resources :performers
  #resources :phones
  #resources :pictures

  #resources :services
  #resources :services_brands
  #resources :special_deal_statuses

  #resources :special_deals
  #resources :special_deal

  #resources :users_cars
  #resources :users_services

  #namespace :admin do
  #  resources :roles, :statuses
  #  resource :role, :status
  #end

  #resources :users do
  #  resources :orders, shallow: true
  #end
  #resources :cars do
  #  resources :orders, shallow: true
  #end
end
