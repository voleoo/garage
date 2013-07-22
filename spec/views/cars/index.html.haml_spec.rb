require 'spec_helper'

describe "cars/index" do
  before(:each) do
    assign(:cars, [
      stub_model(Car),
      stub_model(Car)
    ])
  end

  it "renders a list of cars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
