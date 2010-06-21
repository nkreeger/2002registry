# == Schema Info
#
# Table name: users
#
#  id               :integer         not null, primary key
#  address1         :string(255)
#  address2         :string(255)
#  city             :string(255)
#  country          :string(255)
#  email            :string(255)
#  name             :string(255)
#  password         :string(255)
#  password_confirm :string(255)
#  share_info       :boolean
#  state            :string(255)
#  zip              :string(255)
#  created_at       :datetime
#  updated_at       :datetime

require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :email => "value for email",
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
