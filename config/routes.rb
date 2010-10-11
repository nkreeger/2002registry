ActionController::Routing::Routes.draw do |map|
  map.root :controller => "pages", :action => "index"
  map.signup  'signup', :controller => "users", :action => "new"
  map.signin  'signin',   :controller => 'sessions', :action => 'new'
  map.signout 'signout',  :controller => 'sessions', :action => 'destroy'
  
  map.resources :users, :only => [:new, :create, :show]
  map.resources :sessions, :only => [:new, :create, :destroy]
  map.resources :vins, :only => [:show]
  map.resources :cars, :only => [:new]
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
