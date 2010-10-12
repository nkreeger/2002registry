require "spec_helper"

describe VinsController do
  before(:each) do
    Scripts::ProcessModelSQL.new(false).run
  end

  describe "GET vin number" do
    it "should return a JSON response with a valid model_id" do
      get :show, :id => "2364177"

      response.should be_success
      json_response = ActiveSupport::JSON.decode(response.body.as_json)
      json_response["success"].should be_true
      json_response["result"]["model"]["model_id"].should == 62
      json_response["result"]["model"]["name"].should == "2002 USA"
      json_response["result"]["model"]["number"].should == 75
    end
    
    it "should return a success==false JSON message" do
      get :show, :id => "1234"
      
      response.should be_success
      json_response = ActiveSupport::JSON.decode(response.body.as_json)
      json_response["success"].should be_false
    end
  end
  
  describe "GET estimated_year" do
    it "should return a JSON response with a estimated year" do
      get :guess_year, :id => 2364177
      
      response.should be_success
      json_response = ActiveSupport::JSON.decode(response.body.as_json)
      json_response["success"].should be_true
      json_response["year"].should == 1975
    end
  end
end
