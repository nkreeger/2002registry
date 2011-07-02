require "spec_helper"

describe SearchesController do

  describe "POST create" do
    it "Should redirect to get :show" do
      post :create, :term => "234177"
      response.should redirect_to(search_path("234177"))
    end
  end

  describe "GET show" do
    before(:each) do
      car = mock_model(Car, :id => 1,
                            :user_id => 1,
                            :vin => 234177,
                            :claimed_year => 1975,
                            :color => "Polaris",
                            :is_alive => true,
                            :location_country_code => "US",
                            :location_state => "MO")
      Car.should_receive(:find_by_vin).with(234177).and_return(car)

      get :show, :id => "234177"
    end

    it "should assing the vin number" do
      assigns[:term].should == 234177.to_s
      assigns(:car).vin.should == 234177
    end
  end
  
end
