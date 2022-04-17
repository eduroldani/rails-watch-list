Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #MOVIES
  get "movies", to: "movies#index"


  #LIST
  #index
  get "lists", to: "lists#index"
  get "lists/new", to: "lists#new", as: 'new'
  post "lists", to: "lists#create"
  #Display one
  get "lists/:id", to: "lists#show", as: 'list'
  #create a new list


  #BOOKMARK
  get  "lists/:list_id/bookmarks/new", to: "bookmarks#new", as: 'new_list_bookmark'
  post "lists/:list_id/bookmarks", to: "bookmarks#create", as: 'list_bookmarks'

end
