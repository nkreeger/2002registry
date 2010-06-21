ActionController::Routing::Routes.draw do |map|

  # Root mapping
  map.root :controller => "pages", :action => "index"

  # Users Controller routes
  map.signup   'signup', :controller => "users", :action => "new"

  # Default stuff
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
