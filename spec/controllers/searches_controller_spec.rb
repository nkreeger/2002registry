require "spec_helper"

describe SearchesController do

  describe "POST create" do
    it "should route" do
      { :post => "/searches"}.should route_to(
        :controller => "searches", :action => "create")
    end
  end
  
end
