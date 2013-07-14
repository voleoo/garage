require 'spec_helper'

describe SpecialDeal do
  describe "relations" do
    it { should have_one :order }
    it { should have_many :special_deal_statuses }
  end
  describe "validations" do
    it { should validate_presence_of :title }   
    it { should validate_presence_of :discount }
    it { should_not allow_value("2001-90-01 21:12:99").for(:end_date) }
    it { should allow_value("2001-10-01 21:12:41").for(:end_date) }
  end

end
