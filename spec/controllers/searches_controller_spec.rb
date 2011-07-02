require "spec_helper"

describe SearchesController do

  describe "POST create" do
    it "should route" do
      { :post => "/searches"}.should route_to(
        :controller => "searches", :action => "create")
    end
  end

  describe "GET show" do
    before(:each) do
      get :show, :id => "2364177"
    end

    it "should assing the vin number" do
      assigns[:vin].should == 2364177.to_s
    end
  end
  
end
