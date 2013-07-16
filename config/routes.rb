Community::Application.routes.draw do
  get "user/update"
  get "user/show"
  get "user/new"
  get "user/create"
#  resources :users
#    GET          /posts  index   display a list of all posts
#    GET          /posts/new  new   return an HTML form for creating a new post
#    POST         /posts  create  create a new post
#    GET          /posts/:id  show  display a specific post
#    GET          /posts/:id/edit   edit  return an HTML form for editing a post
#    PATCH/PUT    /posts/:id  update  update a specific post
#    DELETE       /posts/:id  destroy   delete a specific post
  resources :user

  resources :authentications
  resources :brands
  #resources :cars
  #resources :orders
  resources :performers
  resources :phones
  resources :pictures
  #resources :roles
  resources :services
  resources :services_brands
  resources :special_deal_statuses

  resources :special_deals
  resources :special_deal
  #resources :statuses
  #resources :users

  resources :users_cars
  resources :users_services

  namespace :admin do
    resources :roles, :statuses
    resource :role, :status
  end

  resources :users do
    resources :orders, shallow: true
  end
  resources :cars do
    resources :orders, shallow: true
  end


end
