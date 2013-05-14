Flashcards::Application.routes.draw do
  root :to => "decks#index"

  resources :decks
  # get "/decks" => "decks#index"
  # get "/decks/:id" => "decks#show", as: :deck
  # get "/decks/new" => "decks#new"
  # post "/decks/" => "decks#create"
  # get "/decks/:id/edit" => "decks#edit"
  # patch "/decks/:id" => "decks#update"  
  # delete "/decks/:id" => "decks#destroy"

end