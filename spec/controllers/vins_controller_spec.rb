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
      json_response["model_id"].should == 62
    end
  end
end
