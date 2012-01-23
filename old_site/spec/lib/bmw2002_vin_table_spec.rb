require "spec_helper"

describe BMW2002VinTable do
  it "should return the model number of a given valid VIN number" do 
    fake_model = mock_model(Model, :model_id => 62, :model_nun => "2002 A USA")
    Model.should_receive(:find_by_model_id).with(62).and_return(fake_model)
    
    model = BMW2002VinTable.lookup_model(2364177)[:model]
    model.should_not be_nil
    model.should be_a_kind_of(Model)
  end
  
  it "should work with a variety of valid VIN numbers" do
    fake_model = mock_model(Model, :model_id => 5, :model_nun => "2002 A USA")
    Model.should_receive(:find_by_model_id).with(5).and_return(fake_model)
    model = BMW2002VinTable.lookup_model(1850001)[:model]
    model.should_not be_nil
  end
  
  it "should not work with invalid VIN numbers" do
    fake_model = mock_model(Model, :model_id => 5, :model_nun => "2002 A USA")
    Model.should_not_receive(:find_by_model_id).with(5).and_return(fake_model)
    model = BMW2002VinTable.lookup_model(1850000)[:model]
    model.should be_nil
  end
  
  it "should return a variance value" do
    fake_model = mock_model(Model, :model_id => 1, :model_nun => "2002 A USA")
    Model.should_receive(:find_by_model_id).with(1).and_return(fake_model)
    response = BMW2002VinTable.lookup_model(4160001)
    response[:variance].should == 0.2
  end
end