require "spec_helper"

describe SessionsController do

  describe "Custom routing" do
    it "should route to '/signin'" do
      { :get => "/signin" }.should route_to(:controller => "sessions",
                                            :action => "new")
    end

    it "should route to '/signout'" do
      { :get => "/signout" }.should route_to(:controller => "sessions",
                                             :action => "destroy")
    end
  end

  describe "POST create" do
  end
end
