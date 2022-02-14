Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "flats#index"

  # this route will match urls like /flats/145, and put the variable id
  # it will put the id in  the params hash
  get 'flats/:id', to: "flats#show", as: "flat" 
end
