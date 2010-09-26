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
      :password => "value for password",
      :password_confirm => "value for password_confirm",
      :share_info => false
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
end
