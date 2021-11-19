# == Route Map
#
#               Prefix Verb   URI Pattern                                         Controller#Action
#             property GET    /properties/:abbreviation(.:format)                 properties#show
#     property_tenants GET    /properties/:property_id/tenants(.:format)          tenants#index
#                      POST   /properties/:property_id/tenants(.:format)          tenants#create
#  new_property_tenant GET    /properties/:property_id/tenants/new(.:format)      tenants#new
# edit_property_tenant GET    /properties/:property_id/tenants/:id/edit(.:format) tenants#edit
#      property_tenant GET    /properties/:property_id/tenants/:id(.:format)      tenants#show
#                      PATCH  /properties/:property_id/tenants/:id(.:format)      tenants#update
#                      PUT    /properties/:property_id/tenants/:id(.:format)      tenants#update
#                      DELETE /properties/:property_id/tenants/:id(.:format)      tenants#destroy
#       property_bills GET    /properties/:property_id/bills(.:format)            bills#index
#                      POST   /properties/:property_id/bills(.:format)            bills#create
#    new_property_bill GET    /properties/:property_id/bills/new(.:format)        bills#new
#   edit_property_bill GET    /properties/:property_id/bills/:id/edit(.:format)   bills#edit
#        property_bill GET    /properties/:property_id/bills/:id(.:format)        bills#show
#                      PATCH  /properties/:property_id/bills/:id(.:format)        bills#update
#                      PUT    /properties/:property_id/bills/:id(.:format)        bills#update
#                      DELETE /properties/:property_id/bills/:id(.:format)        bills#destroy
#           properties GET    /properties(.:format)                               properties#index
#                      POST   /properties(.:format)                               properties#create
#                      PATCH  /properties/:id(.:format)                           properties#update
#                      PUT    /properties/:id(.:format)                           properties#update
#                      DELETE /properties/:id(.:format)                           properties#destroy
#                 root GET    /                                                   properties#index

Rails.application.routes.draw do

  get "properties/:abbreviation", to: "properties#show", as: :property
  # patch "properties/:abbreviation", to: "photos#update"
  # put "properties/:abbreviation", to: "photos#update"


  resources :properties, only: [:index, :create, :destroy, :update, :delete] do
  # resources :properties do
    resources :tenants
    resources :bills
  end



  root "properties#index"
end
