require 'spec_helper'

describe UsersController do
  describe "GET new" do
    it "should setup a new user variable" do
      get :new
      response.should be_success
      assigns(:title).should == "Sign up"
      assigns(:user).should_not be_nil
    end
  end

  describe "GET show" do
    it "should have a landing page for the user once they sign in" do
      user = mock_model(User, :email => "test@user.org", :password => "foobar")
      User.should_receive(:find).with("1").and_return(user)
      
      get :show, :id => "1"
      response.should be_success
    end
  end

  describe "POST create" do
    it "should create add a new user account if the correct information is used" do
      mock_user = mock_model(User,
                             :name => "Test User",
                             :email => "test@test.com",
                             :address1 => "123 Main St.",
                             :address2 => nil,
                             :city => "San Francisco",
                             :state => "CA",
                             :zip => 94105,
                             :country => "US",
                             :password => "foobar",
                             :password_confirm => "foobar",
                             :share_info => true)
      User.should_receive(:new).and_return(mock_user)
      mock_user.should_receive(:save).and_return(true)
      controller.stub(:sign_in).and_return(true)

      post :create, {
        :user => {
          :name => mock_user.name,
          :email => mock_user.email,
          :address1 => mock_user.address1,
          :address2 => mock_user.address2,
          :city => mock_user.city,
          :state => mock_user.state,
          :zip => mock_user.zip,
          :country => mock_user.country,
          :password => mock_user.password,
          :password_confirm => mock_user.password_confirm
        }
      }

      response.should redirect_to(user_path(mock_user.id))
    end

    it "should not add a new user account if the incorrect information is used" do
      mock_user = mock_model(User)
      User.should_receive(:new).and_return(mock_user)
      mock_user.should_receive(:save).and_return(false)
      post :create, {:user => {}}
      response.should_not redirect_to(user_path(mock_user.id)) 
    end
  end

  describe "GET edit" do
    it "should work at least..." do
      get :edit
      response.should be_success
    end
  end

  describe "PUT update" do
    it "should work at least..." do
      put :update, {
        :user => {
          :name => "Phil Harris"
        }
      }
    end
  end
end
