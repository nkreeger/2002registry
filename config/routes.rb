ActionController::Routing::Routes.draw do |map|
  map.root :controller => "pages", :action => "index"
  map.signup  'signup', :controller => "users", :action => "new"
  map.signin  'signin',   :controller => 'sessions', :action => 'new'
  map.signout 'signout',  :controller => 'sessions', :action => 'destroy'
  
  map.resources :users, :only => [:new, :create, :show, :edit, :update],
                        :member => { :edit_image => :get,
                                     :update_image => :put,
                                     :change_password => :get,
                                     :update_password => :put }
  map.resources :sessions, :only => [:new, :create, :destroy]
  map.resources :vins, :only => [:show, :guess_year], :member => { :guess_year => :get }
  map.resources :cars, :only => [:new, :create, :show, :index]
  map.resources :locations, :only => [:lookup], :collection => { :lookup => :get }
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
