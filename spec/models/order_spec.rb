require 'spec_helper'

describe Order do
  describe "relations" do
    it { should belong_to :user }
    it { should belong_to :car }
    it { should belong_to :special_deal }
    it { should have_many :performers }
    it { should have_many :pictures }
  end

  describe "validations" do
    #it { should_not allow_value("2013-01-01 25:00:01").for(:deadline) }
    #it { should allow_value("2013-01-01 11:00:01").for(:deadline) }

    it { should_not allow_value("2013-31-01").for(:deadline) }
    it { should allow_value("+380000000000").for(:deadline) }
    it { should validate_numericality_of :price }
  end

end
