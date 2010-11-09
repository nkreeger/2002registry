require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :email => "value@test.org",
      :address1 => "value for address1",
      :address2 => "value for address2",
      :city => "value for city",
      :state => "value for state",
      :zip => "value for zip",
      :country => "value for country",
      :password => "password_val",
      :password_confirm => "password",
      :share_info => false
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end

  describe "Updating the users password" do
    it "should update the users password and underneath storage with 'update_password'" do
      user = User.create!(@valid_attributes)
      user.update_password!("password_val", "foobar")
      user.has_password?("foobar").should be_true
    end

    it "should throw an exception if the incorrect original password is used" do
      user = User.create!(@valid_attributes)

      lambda {
        user.update_password("nottherightpassword", "foobar")
      }.should raise_error

      user.has_password?("nottherightpassword").should be_false
    end
  end

end
