require 'spec_helper'

describe Brand do

  describe "relations" do
    it { should have_many :pictures }
    it { should have_and_belong_to_many :services }
  end

  describe "validations" do
    it { should validate_presence_of :brand }
  end
  
end
