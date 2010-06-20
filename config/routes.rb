ActionController::Routing::Routes.draw do |map|

  # Root mapping
  map.root :controller => "pages", :action => "index"

  # Default stuff
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
