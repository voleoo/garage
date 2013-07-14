require 'spec_helper'

describe Car do

  describe "relations" do
    it { should have_many :users_cars }
    it { should have_many :users }
    it { should have_many :orders }
    it { should have_many :pictures }
  end

  describe "validations" do
    it { should ensure_length_of(:vim).is_equal_to(16) }
  end
end
