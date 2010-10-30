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

    describe "GET show" do
      before(:each) do
        #user = mock_model(User, :email => "test@user.org", :password => "foobar")
        #User.should_receive(:find).with("1").and_return(user)

        car = mock_model(Car, :id => 1,
                              :user_id => 1,
                              :vin => 234177,
                              :claimed_year => 1975,
                              :color => "Polaris",
                              :is_alive => true,
                              :location_country_code => "US",
                              :location_state => "MO")
        Car.should_receive(:find).with("1").and_return(car)
      end

      it "should load information for the car if it exists" do
        get :show, :id => "1"
      end
    end
  end
end
