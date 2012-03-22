Week7::Application.routes.draw do
  resources :bookmarks, :only => [:index, :new, :create, :show]

  resources :users, :only => [:index, :new, :create, :show]
  
    match '/users/display',  :to => 'users#display'
    match '/users/validate', :to => 'users#validate'
    
end
