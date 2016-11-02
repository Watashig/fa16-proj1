# == Route Map
#
#                      Prefix Verb   URI Pattern                       Controller#Action
#                        root GET    /                                 home#index
#            pokemons_capture PATCH  /pokemons/capture(.:format)       pokemons#capture
#             pokemons_damage PATCH  /pokemons/damage(.:format)        pokemons#damage
#                pokemons_new GET    /pokemons/new(.:format)           pokemons#new
#             pokemons_create POST   /pokemons/create(.:format)        pokemons#create
#               pokemons_heal PATCH  /pokemons/heal(.:format)          pokemons#heal
#         new_trainer_session GET    /trainers/sign_in(.:format)       devise/sessions#new
#             trainer_session POST   /trainers/sign_in(.:format)       devise/sessions#create
#     destroy_trainer_session DELETE /trainers/sign_out(.:format)      devise/sessions#destroy
#            trainer_password POST   /trainers/password(.:format)      devise/passwords#create
#        new_trainer_password GET    /trainers/password/new(.:format)  devise/passwords#new
#       edit_trainer_password GET    /trainers/password/edit(.:format) devise/passwords#edit
#                             PATCH  /trainers/password(.:format)      devise/passwords#update
#                             PUT    /trainers/password(.:format)      devise/passwords#update
# cancel_trainer_registration GET    /trainers/cancel(.:format)        devise/registrations#cancel
#        trainer_registration POST   /trainers(.:format)               devise/registrations#create
#    new_trainer_registration GET    /trainers/sign_up(.:format)       devise/registrations#new
#   edit_trainer_registration GET    /trainers/edit(.:format)          devise/registrations#edit
#                             PATCH  /trainers(.:format)               devise/registrations#update
#                             PUT    /trainers(.:format)               devise/registrations#update
#                             DELETE /trainers(.:format)               devise/registrations#destroy
#                    trainers GET    /trainers(.:format)               trainers#index
#                             POST   /trainers(.:format)               trainers#create
#                 new_trainer GET    /trainers/new(.:format)           trainers#new
#                edit_trainer GET    /trainers/:id/edit(.:format)      trainers#edit
#                     trainer GET    /trainers/:id(.:format)           trainers#show
#                             PATCH  /trainers/:id(.:format)           trainers#update
#                             PUT    /trainers/:id(.:format)           trainers#update
#                             DELETE /trainers/:id(.:format)           trainers#destroy
#

Rails.application.routes.draw do
  root to: 'home#index'
  patch 'pokemons/capture', to: 'pokemons#capture'
  patch 'pokemons/damage', to: 'pokemons#damage'
  get 'pokemons/new', to: 'pokemons#new'
  post 'pokemons/create', to: 'pokemons#create'
  patch 'pokemons/heal', to: 'pokemons#heal'
  devise_for :trainers
  resources :trainers
end
