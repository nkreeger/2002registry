require "spec_helper"

describe LocationsController do
  describe "GET my current location" do
    it "should return a JSON response with some location information" do
      Geokit::Geocoders::IpGeocoder.should_receive(:do_geocode).and_return(
          Geokit::GeoLoc.new(:city => "San Francisco", :state => "CA", :country_code => "US"))

      get :lookup
      response.should be_success
      
      json_response = ActiveSupport::JSON.decode(response.body.as_json)
      json_response["success"].should be_true
      json_response["country_code"].should == "US"
      json_response["state_code"].should == "CA"
    end

    it "should return false if no location information is available" do
      get :lookup
      response.should be_success

      json_response = ActiveSupport::JSON.decode(response.body.as_json)
      json_response["success"].should be_false
      json_response["country_code"].should be_nil
      json_response["state_code"].should be_nil
    end
  end
end
