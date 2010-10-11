require "spec_helper"

describe CarsController do
  describe "GET new" do
    it "should route" do
      { :get => "/cars/new"}.should route_to(
        :controller => "cars", :action => "new")
    end

    it "should work" do
      get :new
      response.should be_success
    end
  end
end
