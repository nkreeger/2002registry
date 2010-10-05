require 'spec_helper'

describe UsersController do
  describe "GET show" do
  
    it "should have a landing page for the user once they sign in" do
      user = mock_model(User, :email => "test@user.org", :password => "foobar")
      User.should_receive(:find).with("1").and_return(user)
      
      get :show, :id => "1"
      response.should be_success
    end
  
  end
end
