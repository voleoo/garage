require 'spec_helper'

describe User do
  describe "relations" do
    it { should have_many :orders }
    it { should have_many :users_cars }
    it { should have_many :cars }
    it { should have_many :pictures }
    it { should have_many :orders  }
    it { should have_many :performers }
    it { should belong_to :status }
    it { should have_many :phones }
    it { should have_one :authentication }
    it { should have_many :users_services }
    it { should have_many :services }
    it { should belong_to :role }
  end

  describe "validations" do
    it { should validate_presence_of :role_id }
    it { should validate_presence_of :status_id }
  end

end
