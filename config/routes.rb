# == Route Map
#
#                                   Prefix Verb   URI Pattern                                                                                       Controller#Action
#                         property_tenants GET    /properties/:property_id/tenants(.:format)                                                        tenants#index
#                                          POST   /properties/:property_id/tenants(.:format)                                                        tenants#create
#                      new_property_tenant GET    /properties/:property_id/tenants/new(.:format)                                                    tenants#new
#                     edit_property_tenant GET    /properties/:property_id/tenants/:id/edit(.:format)                                               tenants#edit
#                          property_tenant GET    /properties/:property_id/tenants/:id(.:format)                                                    tenants#show
#                                          PATCH  /properties/:property_id/tenants/:id(.:format)                                                    tenants#update
#                                          PUT    /properties/:property_id/tenants/:id(.:format)                                                    tenants#update
#                                          DELETE /properties/:property_id/tenants/:id(.:format)                                                    tenants#destroy
#                           property_bills GET    /properties/:property_id/bills(.:format)                                                          bills#index
#                                          POST   /properties/:property_id/bills(.:format)                                                          bills#create
#                        new_property_bill GET    /properties/:property_id/bills/new(.:format)                                                      bills#new
#                       edit_property_bill GET    /properties/:property_id/bills/:id/edit(.:format)                                                 bills#edit
#                            property_bill GET    /properties/:property_id/bills/:id(.:format)                                                      bills#show
#                                          PATCH  /properties/:property_id/bills/:id(.:format)                                                      bills#update
#                                          PUT    /properties/:property_id/bills/:id(.:format)                                                      bills#update
#                                          DELETE /properties/:property_id/bills/:id(.:format)                                                      bills#destroy
#                               properties GET    /properties(.:format)                                                                             properties#index
#                                          POST   /properties(.:format)                                                                             properties#create
#                             new_property GET    /properties/new(.:format)                                                                         properties#new
#                            edit_property GET    /properties/:id/edit(.:format)                                                                    properties#edit
#                                 property GET    /properties/:id(.:format)                                                                         properties#show
#                                          PATCH  /properties/:id(.:format)                                                                         properties#update
#                                          PUT    /properties/:id(.:format)                                                                         properties#update
#                                          DELETE /properties/:id(.:format)                                                                         properties#destroy
#                                     root GET    /                                                                                                 properties#index
#            rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
#               rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
#            rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
#      rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
#            rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
#             rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
#           rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
#                                          POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
#        new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                                      rails/conductor/action_mailbox/inbound_emails#new
#       edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                                 rails/conductor/action_mailbox/inbound_emails#edit
#            rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
#                                          PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
#                                          PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
#                                          DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#destroy
# new_rails_conductor_inbound_email_source GET    /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
#    rails_conductor_inbound_email_sources POST   /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
#    rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
#                       rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
#                 rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
#                                          GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
#                rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
#          rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
#                                          GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
#                       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
#                update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
#                     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create

Rails.application.routes.draw do

  resources :properties do
    resources :tenants
    resources :bills
  end

  root "properties#index"
end
