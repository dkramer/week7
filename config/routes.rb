Week7::Application.routes.draw do
  resources :bookmarks, :only => [:index, :new, :create, :show]
  #get "bookmarks/index"

  #get "bookmarks/show"

  #get "bookmarks/new"

  #get "bookmarks/create"
end
