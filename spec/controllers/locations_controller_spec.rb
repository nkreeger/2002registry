require "spec_helper"

describe LocationsController do
  describe "GET my current location" do
    it "should return a JSON response with some location information" do
      get :lookup
      response.should be_success
      
      json_response = ActiveSupport::JSON.decode(response.body.as_json)
      json_response["success"].should be_true
#
# NOT SURE WHAT TO DO HERE EXACTLY
#      json_response["location"].should == "CA"
#
    end
  end
end