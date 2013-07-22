require 'spec_helper'

describe "cars/show" do
  before(:each) do
    @car = assign(:car, stub_model(Car))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
