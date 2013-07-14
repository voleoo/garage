require 'spec_helper'

describe Role do
  describe "relations" do
    it { should have_many :users }
  end
  describe "validations" do
    it { should_not allow_value("@1s").for(:role) }
    it { should allow_value("admin").for(:role) }
  end

end
