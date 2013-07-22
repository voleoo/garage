require 'spec_helper'

describe "cars/edit" do
  before(:each) do
    @car = assign(:car, stub_model(Car))
  end

  it "renders the edit car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", car_path(@car), "post" do
    end
  end
end
