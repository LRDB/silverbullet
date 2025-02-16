Rails.application.routes.draw do
  root    "home#home"
  get     "/home",        to: "home#home"
  get     "/signup",      to: "users#new"
end
