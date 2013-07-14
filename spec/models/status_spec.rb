require 'spec_helper'

describe Status do
  describe "relations" do
    it { should have_many :users }
    it { should have_many :special_deal_statuses }
  end

  describe "validations" do
    it { should_not allow_value("!ws").for(:status) }
    it { should allow_value("status").for(:status) }
  end
end
