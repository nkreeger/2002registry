require "spec_helper"

describe SessionsController do
  integrate_views

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
    it "should sign in the user with correct information used" do
      user = mock_model(User, :email => "test@user.org", :password => "foobar")
      User.should_receive(:authenticate).with(
          "test@user.org", "foobar").and_return(user)

      controller.stub!(:sign_in).with(user).and_return(true)
      controller.stub!(:redirect_back_or).with(user).and_return(true)

      post :create, {
        :session => { :email => "test@user.org", :password => "foobar" }
      }
      response.should be_success
    end

    it "should redirect back to 'sign_in' if the incorrect information is used" do
      User.should_receive(:authenticate).with(
          "bad_login@bad.com", "badpass").and_return(nil)

      post :create, {
        :session => { :email => "bad_login@bad.com", :password => "badpass" }
      }
      response.should be_success
      response.should render_template("sessions/new.html.erb")
    end
  end
end
