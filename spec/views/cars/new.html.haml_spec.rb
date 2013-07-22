require 'spec_helper'

describe "cars/new" do
  before(:each) do
    assign(:car, stub_model(Car).as_new_record)
  end

  it "renders new car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cars_path, "post" do
    end
  end
end
