Rails.application.routes.draw do
  root      "home#home"
  get       "/home",        to: "home#home"
  get       "/signup",      to: "users#new"
  get       "/login",       to: "sessions#new"
  post      "/login",       to: "sessions#create"
  get       "/logout",      to: "sessions#destroy"
  get       "/newslot",     to: "timeslots#new"
  get       "/timeslots",   to: "timeslots#index"
  resources :users, :timeslots, :bookings
end
