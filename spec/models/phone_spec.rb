require 'spec_helper'

describe Phone do
  describe "relations" do
    it { should belong_to :user }
  end

  describe "validations" do
    it { should_not allow_value("+3806700000000").for(:phone) }
    it { should allow_value("+380670000000").for(:phone) }
  end
end
